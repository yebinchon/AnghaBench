
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fbtft_par {int dummy; } ;
struct TYPE_2__ {int xs; int ys_page; int xe; int ye_page; } ;


 TYPE_1__ addr_win ;

__attribute__((used)) static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{
 addr_win.xs = xs;
 addr_win.ys_page = ys / 8;
 addr_win.xe = xe;
 addr_win.ye_page = ye / 8;
}
