
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 u8 i;

 par->fbtftops.reset(par);

 for (i = 0; i < 2; ++i) {
  write_reg(par, i, 0x3f);
  write_reg(par, i, 0x40);
  write_reg(par, i, 0xb0);
  write_reg(par, i, 0xc0);
 }

 return 0;
}
