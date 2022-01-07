
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int AMS_DELTA_MAX_CONTRAST ;
 int OMAP_PWL_ENABLE ;
 int ams_delta_lcd ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static int ams_delta_lcd_set_contrast(struct lcd_device *dev, int value)
{
 if ((value >= 0) && (value <= AMS_DELTA_MAX_CONTRAST)) {
  omap_writeb(value, OMAP_PWL_ENABLE);
  ams_delta_lcd &= ~AMS_DELTA_MAX_CONTRAST;
  ams_delta_lcd |= value;
 }
 return 0;
}
