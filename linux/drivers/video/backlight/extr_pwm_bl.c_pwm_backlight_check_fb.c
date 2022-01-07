
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_bl_data {int dev; scalar_t__ (* check_fb ) (int ,struct fb_info*) ;} ;
struct fb_info {int dummy; } ;
struct backlight_device {int dummy; } ;


 struct pwm_bl_data* bl_get_data (struct backlight_device*) ;
 scalar_t__ stub1 (int ,struct fb_info*) ;

__attribute__((used)) static int pwm_backlight_check_fb(struct backlight_device *bl,
      struct fb_info *info)
{
 struct pwm_bl_data *pb = bl_get_data(bl);

 return !pb->check_fb || pb->check_fb(pb->dev, info);
}
