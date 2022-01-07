
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int AMS_DELTA_LCD_POWER ;
 int AMS_DELTA_MAX_CONTRAST ;
 int FB_BLANK_UNBLANK ;
 int OMAP_PWL_CLK_ENABLE ;
 int OMAP_PWL_ENABLE ;
 int ams_delta_lcd ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static int ams_delta_lcd_set_power(struct lcd_device *dev, int power)
{
 if (power == FB_BLANK_UNBLANK) {
  if (!(ams_delta_lcd & AMS_DELTA_LCD_POWER)) {
   omap_writeb(ams_delta_lcd & AMS_DELTA_MAX_CONTRAST,
     OMAP_PWL_ENABLE);
   omap_writeb(1, OMAP_PWL_CLK_ENABLE);
   ams_delta_lcd |= AMS_DELTA_LCD_POWER;
  }
 } else {
  if (ams_delta_lcd & AMS_DELTA_LCD_POWER) {
   omap_writeb(0, OMAP_PWL_ENABLE);
   omap_writeb(0, OMAP_PWL_CLK_ENABLE);
   ams_delta_lcd &= ~AMS_DELTA_LCD_POWER;
  }
 }
 return 0;
}
