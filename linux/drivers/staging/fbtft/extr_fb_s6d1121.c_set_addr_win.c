
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fbtft_par {TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 int HEIGHT ;
 int WIDTH ;
 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{
 switch (par->info->var.rotate) {


 case 0:
  write_reg(par, 0x0020, xs);
  write_reg(par, 0x0021, ys);
  break;
 case 180:
  write_reg(par, 0x0020, WIDTH - 1 - xs);
  write_reg(par, 0x0021, HEIGHT - 1 - ys);
  break;
 case 270:
  write_reg(par, 0x0020, WIDTH - 1 - ys);
  write_reg(par, 0x0021, xs);
  break;
 case 90:
  write_reg(par, 0x0020, ys);
  write_reg(par, 0x0021, HEIGHT - 1 - xs);
  break;
 }
 write_reg(par, 0x0022);
}
