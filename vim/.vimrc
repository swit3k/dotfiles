syntax enable
let g:solarized_termcolors=256
colorscheme solarized

set background=dark
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set autoindent

" Vundle "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle > Plugins "
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'The-NERD-tree'
Plugin 'SuperTab'

call vundle#end()
filetype plugin indent on

" Airline "
set t_Co=256
set laststatus=2

let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_mode_map = {
      \ 'n'  : 'Normal',
      \ 'i'  : 'Ins',
      \ 'R'  : 'Read',
      \ 'v'  : 'Vis',
      \ 'V'  : 'VisLine',
      \ 'c'  : 'CMD',
      \ }
" Show the current working directory folder name
let g:airline_section_b = '%{substitute(getcwd(), ".*\/", "", "g")} '
" Just show the file name
" let g:airline_section_c = '%t'
" let g:airline_section_y = ''
" let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#:%3'
" let g:airline_section_z = '%3p%% %{substitute(line("."), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}|%{substitute(line("$"), "\\v(\\d)((\\d\\d\\d)+\\d@!)@=", "\\1,", "g")}'

" Maps "
nmap <C-n> :NERDTreeToggle<CR>
nmap ,] :tabnext<CR>
nmap ,[ :tabprevious<CR>
nmap ,p :CtrlP<CR>
nmap ,n :NERDTreeFind<CR>
nmap ,N :nohlsearch<CR>

imap ,. <Esc> 
