
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static void set_addr_win_64x48(struct fbtft_par *par)
{

 write_reg(par, 0x21);
 write_reg(par, 0x20);
 write_reg(par, 0x5F);


 write_reg(par, 0x22);
 write_reg(par, 0x0);
 write_reg(par, 0x5);
}
