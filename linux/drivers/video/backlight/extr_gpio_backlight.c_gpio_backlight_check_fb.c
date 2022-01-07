
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_backlight {int * fbdev; } ;
struct fb_info {int * dev; } ;
struct backlight_device {int dummy; } ;


 struct gpio_backlight* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int gpio_backlight_check_fb(struct backlight_device *bl,
       struct fb_info *info)
{
 struct gpio_backlight *gbl = bl_get_data(bl);

 return gbl->fbdev == ((void*)0) || gbl->fbdev == info->dev;
}
