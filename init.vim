call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/keith/tmux.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/jistr/vim-nerdtree-tabs'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/pangloss/vim-javascript'
call plug#end()

set t_Co=256

set tabstop=3 shiftwidth=3 softtabstop=3 expandtab

colorscheme wombat
"colorscheme molokai
hi comment ctermfg=red

let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 25 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set mouse=n

nmap ,edit :tabedit ~/.config/nvim/init.vim <cr>
nmap ,so :so % <cr>
nmap qq :q <cr>
nmap ,install :w \| so % \| PlugInstall <cr>
