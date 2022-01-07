
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssd1307fb_par {int contrast; } ;
struct backlight_device {int dummy; } ;


 struct ssd1307fb_par* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int ssd1307fb_get_brightness(struct backlight_device *bdev)
{
 struct ssd1307fb_par *par = bl_get_data(bdev);

 return par->contrast;
}
