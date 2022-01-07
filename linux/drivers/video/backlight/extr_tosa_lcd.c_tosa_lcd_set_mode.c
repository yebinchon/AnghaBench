
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosa_lcd_data {int is_vga; int lcd_power; } ;
struct lcd_device {int dummy; } ;
struct fb_videomode {int xres; int yres; } ;


 scalar_t__ POWER_IS_ON (int ) ;
 struct tosa_lcd_data* lcd_get_data (struct lcd_device*) ;
 int tosa_lcd_tg_on (struct tosa_lcd_data*) ;

__attribute__((used)) static int tosa_lcd_set_mode(struct lcd_device *lcd, struct fb_videomode *mode)
{
 struct tosa_lcd_data *data = lcd_get_data(lcd);

 if (mode->xres == 320 || mode->yres == 320)
  data->is_vga = 0;
 else
  data->is_vga = 1;

 if (POWER_IS_ON(data->lcd_power))
  tosa_lcd_tg_on(data);

 return 0;
}
