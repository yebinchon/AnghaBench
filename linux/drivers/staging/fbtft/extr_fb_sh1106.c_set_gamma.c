
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fbtft_par {int dummy; } ;


 int write_reg (struct fbtft_par*,int,int) ;

__attribute__((used)) static int set_gamma(struct fbtft_par *par, u32 *curves)
{

 curves[0] &= 0xFF;


 write_reg(par, 0x81, curves[0]);

 return 0;
}
