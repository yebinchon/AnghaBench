
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {int bl_brightness; TYPE_1__* cfg; } ;
struct TYPE_5__ {int brightness; scalar_t__ power; int state; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_6__ {int (* set_brightness ) (int) ;} ;
struct TYPE_4__ {TYPE_3__ bl_info; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 struct sh_mobile_lcdc_chan* bl_get_data (struct backlight_device*) ;
 int stub1 (int) ;

__attribute__((used)) static int sh_mobile_lcdc_update_bl(struct backlight_device *bdev)
{
 struct sh_mobile_lcdc_chan *ch = bl_get_data(bdev);
 int brightness = bdev->props.brightness;

 if (bdev->props.power != FB_BLANK_UNBLANK ||
     bdev->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK))
  brightness = 0;

 ch->bl_brightness = brightness;
 return ch->cfg->bl_info.set_brightness(brightness);
}
