
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fbtft_par {TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{
 switch (par->info->var.rotate) {
 case 90:
 case 270:

  write_reg(par, ys & 0x0F);
  write_reg(par, 0x10 | (ys >> 4));


  write_reg(par, 0x60 | ((xs >> 1) & 0x0F));
  write_reg(par, 0x70 | (xs >> 5));
  break;
 default:

  write_reg(par, xs & 0x0F);
  write_reg(par, 0x10 | (xs >> 4));


  write_reg(par, 0x60 | ((ys >> 1) & 0x0F));
  write_reg(par, 0x70 | (ys >> 5));
  break;
 }
}
