
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int bl_brightness; } ;
struct backlight_device {int dummy; } ;


 struct sh_mobile_lcdc_chan* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int sh_mobile_lcdc_get_brightness(struct backlight_device *bdev)
{
 struct sh_mobile_lcdc_chan *ch = bl_get_data(bdev);

 return ch->bl_brightness;
}
