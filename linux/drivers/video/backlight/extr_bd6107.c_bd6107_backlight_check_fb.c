
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int * dev; } ;
struct bd6107 {TYPE_1__* pdata; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {int * fbdev; } ;


 struct bd6107* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int bd6107_backlight_check_fb(struct backlight_device *backlight,
           struct fb_info *info)
{
 struct bd6107 *bd = bl_get_data(backlight);

 return bd->pdata->fbdev == ((void*)0) || bd->pdata->fbdev == info->dev;
}
