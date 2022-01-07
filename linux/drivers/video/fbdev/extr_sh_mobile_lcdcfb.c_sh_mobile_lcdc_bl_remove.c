
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int backlight_device_unregister (struct backlight_device*) ;

__attribute__((used)) static void sh_mobile_lcdc_bl_remove(struct backlight_device *bdev)
{
 backlight_device_unregister(bdev);
}
