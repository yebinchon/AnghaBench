
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbtft_par {int dummy; } ;


 int LCD_COL_ADDRESS ;
 int LCD_PAGE_ADDRESS ;
 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{

 write_reg(par, LCD_PAGE_ADDRESS);
 write_reg(par, 0x00);
 write_reg(par, LCD_COL_ADDRESS);
}
