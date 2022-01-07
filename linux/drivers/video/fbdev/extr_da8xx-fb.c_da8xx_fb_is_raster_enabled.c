
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ENABLE ;
 int lcdc_read (int ) ;

__attribute__((used)) static bool da8xx_fb_is_raster_enabled(void)
{
 return !!(lcdc_read(LCD_RASTER_CTRL_REG) & LCD_RASTER_ENABLE);
}
