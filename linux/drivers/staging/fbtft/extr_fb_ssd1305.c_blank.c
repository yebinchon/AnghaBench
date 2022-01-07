
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static int blank(struct fbtft_par *par, bool on)
{
 if (on)
  write_reg(par, 0xAE);
 else
  write_reg(par, 0xAF);
 return 0;
}
