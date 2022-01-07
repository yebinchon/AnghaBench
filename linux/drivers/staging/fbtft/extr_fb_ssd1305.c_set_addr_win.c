
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

 write_reg(par, 0x00 | ((par->info->var.rotate == 180) ? 0x0 : 0x4));

 write_reg(par, 0x10 | 0x0);

 write_reg(par, 0x40 | 0x0);
}
