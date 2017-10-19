filetype on
syntax on

execute pathogen#infect()
let mapleader = '-'
let maplpcalleader = '\'

set number
set expandtab
set smartindent
set autoindent
set showmatch
set shiftwidth=2

" Airline Tabline extension mappings
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Map <Space> to NERDTree
noremap <silent> <Space> :NERDTreeToggle<CR>

" Functions ==========================================>
function! AirlineInit()
  " let g:airline_theme = 'luna'
  " let g:airline_powerline_fonts=1

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  " let g:airline#extensions#tmuxline#enabled = 1
endfunction



function! TablineInit()
  let g:tablineclosebutton=1
endfunction

call AirlineInit()
call TablineInit()
