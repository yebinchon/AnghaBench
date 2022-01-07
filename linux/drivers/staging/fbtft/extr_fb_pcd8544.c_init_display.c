
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int bs ;
 int stub1 (struct fbtft_par*) ;
 int tc ;
 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);
 write_reg(par, 0x21);







 write_reg(par, 0x04 | (tc & 0x3));
 write_reg(par, 0x10 | (bs & 0x7));
 write_reg(par, 0x22);
 write_reg(par, 0x08 | 4);

 return 0;
}
