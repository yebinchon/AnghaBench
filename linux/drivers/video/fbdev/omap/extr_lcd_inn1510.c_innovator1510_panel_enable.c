
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int OMAP1510_FPGA_LCD_PANEL_CONTROL ;
 int __raw_writeb (int,int ) ;

__attribute__((used)) static int innovator1510_panel_enable(struct lcd_panel *panel)
{
 __raw_writeb(0x7, OMAP1510_FPGA_LCD_PANEL_CONTROL);
 return 0;
}
