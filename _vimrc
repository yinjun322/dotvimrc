" Vim configuration file, in effect when invoked as "vi". The aim of this
" configuration file is to provide a Vim environment as compatible with the
" original vi as possible. Note that ~/.vimrc configuration files as other
" configuration files in the runtimepath are still sourced.
" When Vim is invoked differently ("vim", "view", "evim", ...) this file is
" _not_ sourced; /etc/vim/vimrc and/or /etc/vim/gvimrc are.

" Debian system-wide default configuration Vim
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after

set compatible

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'The-NERD-tree'   " file explorer

Plugin 'yi/snipmate.vim'  
Plugin 'Tagbar'  " Display tags of the current file ordered by scope
Plugin 'The-NERD-Commenter'  " A plugin that allows for easy commenting of code for many filetypes.
Plugin 'yinjun322/neocomplcache.vim'  " Ultimate auto-completion system for Vim
Plugin 'AutoComplPop'  " Automatically opens popup menu for completions
Plugin 'kchmck/vim-coffee-script'  " CoffeeScript support for vim
Plugin 'leafo/moonscript-vim'  " Adds syntax highlighting and indent support for MoonScript in vim.
Plugin 'jade.vim'  " Vim Jade template engine syntax highlighting and indention

Plugin 'humiaozuzu/TabBar'
Plugin 'altercation/vim-colors-solarized'

Plugin 'ervandew/supertab' 
Plugin 'yi/QFixToggle'   " Toggle the visibility of the quickfix window
Plugin 'ctrlp.vim'   " Fuzzy file, buffer, MRU, and tag finder with regexp support.

Plugin 'Lokaltog/vim-powerline'   " The ultimate vim statusline utility.
Plugin 'plasticboy/vim-markdown'  "Markdown Vim Mode
"http://plasticboy.com/markdown-vim-mode/
let g:vim_markdown_folding_disabled=1
"
Plugin 'elzr/vim-json'  " A better JSON for Vim: distinct highlighting of
"keywords vs values, JSON-specific (non-JS) warnings, quote concealing.
"Pathogen-friendly.
"
"
"
"
Plugin 'AuthorInfo'

Plugin 'xolox/vim-misc'  " required by lua.vim
Plugin 'xolox/vim-lua-ftplugin'

Plugin 'yi/lua.vim'  " Lua file type plug-in for the Vim text editor
" turn on omni completion of lua.vim
let g:lua_complete_omni = 0
let g:lua_define_omnifunc = 0
Plugin 'a.vim'
Plugin 'OmniCppComplete'
let OmniCpp_DisplayMode = 0
set completeopt=menu

Plugin 'DoxygenToolkit.vim'
map fg : Dox<cr>
let g:DoxygenToolkit_authorName="yinjun"
let g:DoxygenToolkit_licenseTag="\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set formatoptions=tcrqn

" set autoindent

set smartindent

set cindent
set cinkeys=0{,0},:,0#,!,!^F

set tabstop=4
"
set softtabstop=4
set shiftwidth=4
"
set expandtab
"
set nowrap
"
set smarttab



let g:vimrc_author='yinjun' 
let g:vimrc_email='yinjun322@gmail.com' 
let g:vimrc_homepage='http://www.没有哦.cn' 
nmap <F6> :AuthorInfoDetect<cr>

autocmd vimenter * NERDTree 


set number

set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=gb2312
"set termencoding=utf-8
set encoding=utf-8
"
"set langmenu=zh_CN.utf-8
"language messages zh_cn.utf-8
syntax enable
"set background=dark
"colorscheme solarized

set nocp
filetype plugin on  
filetype indent on  
"
set iskeyword+=_,$,@,%,#,- 
"
syntax on 
"
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
"
setlocal noswapfile
set bufhidden=hide
"
set linespace=0
"
set wildmenu

"快捷键
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

nmap <F2> :NERDTreeToggle<CR>
"
nmap <F3> :QFix<CR>
"
nmap <F4> :CtrlP<CR>
"

nmap <F5> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" working with split window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This next set of mappings maps <C-[h/j/k/l]> to the commands needed to
" move
" around your splits. If you remap your capslock key to Ctrl it makes for
" very
" easy navigation.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


