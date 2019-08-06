set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugins
Plugin 'VundleVim/Vundle.vim'
" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'ryanoasis/vim-devicons'
Plugin 'cj/vim-webdevicons'
Plugin 'vim-scripts/CSApprox'
" Buffer
Plugin 'corntrace/bufexplorer'
" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Finding
Plugin 'rking/ag.vim'
" Completion
Plugin 'Raimondi/delimitMate'
" Analyzing
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" General Configuration

" Intuitive backspacing
set backspace=indent,eol,start

" EOL format
set fileformats=unix,mac,dos

" highlight cursor line
set cursorline

" highlight matches as you type
set incsearch 

" highlight matches
set hlsearch

" show 3 lines of context around the cursor
set scrolloff=3

" ignore case while searching except if there's an uppercase letter
set ignorecase smartcase

" indent settings
set shiftwidth=2 " number of spaces used for (auto)indent
set expandtab " use soft tabs (spaces)
set softtabstop=2 " size of soft tabs
set autoindent " auto indent lines
set smartindent " smart (language based) auto indent 

" keep 100 cmdline history
set history=100

" persistent undo
set undofile
set undodir=~/.vim/tmp

" backup options
set backup " turn on backup
set backupdir=~/.vim/backup " dir to save backup files
set directory=~/.vim/tmp " dir to keep all swap files

" Line numbers
set nu!

" Change leader key
let mapleader=","

" Encoding
set encoding=utf8

" keep window on buffer delete
nmap <silent> <leader>bd <Plug>Kwbd

" Hablitite vim for receive mouse clicks
set mouse=a

" Habilite vim yank to clipboard (it doesn't work for mac)
" Works on linux
"set clipboard=unnamedplus
" Works on Mac
set clipboard=unnamed

" Plugins Configuration

" AirLine
let g:airline_theme='violet'
let g:airline_powerline_fonts = 1

" Dracula
syntax on
" Fix broken colorscheme (see https://github.com/dracula/vim/issues/65#issuecomment-377496609)
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

" NerdTree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
map <leader>nf :NERDTreeFind<CR>
map <leader>nt :NERDTreeToggle<CR>

" Bufferexplorer
nnoremap <leader>l :e#<CR>          " switch to last used buffer

" Taggbar
map <leader>tb :TagbarToggle<CR>
