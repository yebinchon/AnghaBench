
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int LCD_ADV_PROG_CTRL ;
 int LCD_ADV_PROG_CTRL2 ;
 int LCD_ALL_PIXEL ;
 int LCD_BIAS ;
 int LCD_BOTTOMVIEW ;
 int LCD_DISPLAY_ENABLE ;
 int LCD_DISPLAY_INVERT ;
 int LCD_NO_OP ;
 int LCD_POWER_CONTROL ;
 int LCD_RESET_CMD ;
 int LCD_SCAN_DIR ;
 int LCD_START_LINE ;
 int LCD_TEMPCOMP_HIGH ;
 int LCD_VOLTAGE ;
 int LCD_VOLUME_MODE ;
 int mdelay (int) ;
 int stub1 (struct fbtft_par*) ;
 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 par->fbtftops.reset(par);


 write_reg(par, LCD_RESET_CMD);
 mdelay(10);


 write_reg(par, LCD_START_LINE);


 write_reg(par, LCD_BOTTOMVIEW | 1);


 write_reg(par, LCD_SCAN_DIR | 0x00);


 write_reg(par, LCD_ALL_PIXEL | 0);


 write_reg(par, LCD_DISPLAY_INVERT | 0);


 write_reg(par, LCD_BIAS | 0);


 write_reg(par, LCD_POWER_CONTROL | 0x07);


 write_reg(par, LCD_VOLTAGE | 0x07);


 write_reg(par, LCD_VOLUME_MODE);
 write_reg(par, 0x09);
 write_reg(par, LCD_NO_OP);


 write_reg(par, LCD_ADV_PROG_CTRL);
 write_reg(par, LCD_ADV_PROG_CTRL2 | LCD_TEMPCOMP_HIGH);


 write_reg(par, LCD_DISPLAY_ENABLE | 1);

 return 0;
}
