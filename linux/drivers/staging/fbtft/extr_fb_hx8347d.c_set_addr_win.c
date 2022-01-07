
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int write_reg (struct fbtft_par*,int,...) ;

__attribute__((used)) static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{
 write_reg(par, 0x02, (xs >> 8) & 0xFF);
 write_reg(par, 0x03, xs & 0xFF);
 write_reg(par, 0x04, (xe >> 8) & 0xFF);
 write_reg(par, 0x05, xe & 0xFF);
 write_reg(par, 0x06, (ys >> 8) & 0xFF);
 write_reg(par, 0x07, ys & 0xFF);
 write_reg(par, 0x08, (ye >> 8) & 0xFF);
 write_reg(par, 0x09, ye & 0xFF);
 write_reg(par, 0x22);
}
