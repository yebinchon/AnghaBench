
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct backlight_device {int dummy; } ;



__attribute__((used)) static int aat2870_bl_check_fb(struct backlight_device *bd, struct fb_info *fi)
{
 return 1;
}
