
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lv5207lp {TYPE_1__* pdata; } ;
struct fb_info {int * dev; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {int * fbdev; } ;


 struct lv5207lp* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int lv5207lp_backlight_check_fb(struct backlight_device *backlight,
           struct fb_info *info)
{
 struct lv5207lp *lv = bl_get_data(backlight);

 return lv->pdata->fbdev == ((void*)0) || lv->pdata->fbdev == info->dev;
}
