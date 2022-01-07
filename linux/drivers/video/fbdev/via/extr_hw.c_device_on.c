
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int viafb_DVI_ON ;
 int viafb_LCD_ON ;
 int viafb_dvi_enable () ;
 int viafb_lcd_enable () ;

__attribute__((used)) static void device_on(void)
{
 if (viafb_DVI_ON == 1)
  viafb_dvi_enable();
 if (viafb_LCD_ON == 1)
  viafb_lcd_enable();
}
