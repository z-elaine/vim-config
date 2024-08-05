call plug#begin()

" List your plugins here
" Plug 'mbbill/desertEx'
Plug 'morhetz/gruvbox'
Plug 'preservim/tagbar'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if has('termguicolors') &&
	\($COLORTERM == 'truecolor' || $COLORTERM == '24bit')
  set termguicolors
endif

" NERDTree
" ----------------------------------------------------------------------------------------------------------------------------------------------

let g:NERDTreeWinSize = 20
" More tabs.
set tabpagemax=20
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" -----------------------------------------------------------------------------------------------------------------------------------------------

" Open Tagbar
nmap <Tab> :TagbarToggle<CR>
" open the tagbar window to 20 percent of the window width with a limit of no less than 25 characters
let g:tagbar_width = max([25, winwidth(0) / 5])

set mouse=a
set number
set autochdir
set background=dark
colorscheme gruvbox
:filetype plugin on
