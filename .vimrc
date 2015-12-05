 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
   set number
   set tabstop=2
endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'tpope/vim-rails'
 NeoBundle 'tomtom/tcomment_vim'
 " インデントに色を付けて見やすくする
 NeoBundle 'nathanaelkane/vim-indent-guides'
 "
 " " vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
 let g:indent_guides_enable_on_vim_startup = 1


 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
