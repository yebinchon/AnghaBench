
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct backlight_device* bl_dev; } ;
struct backlight_device {int dummy; } ;



__attribute__((used)) static int sh_mobile_lcdc_check_fb(struct backlight_device *bdev,
       struct fb_info *info)
{
 return (info->bl_dev == bdev);
}
