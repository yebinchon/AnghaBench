
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_4__ {int (* set_bl_intensity ) (int) ;} ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int KB3886BL_SUSPENDED ;
 TYPE_2__* bl_machinfo ;
 int kb3886bl_flags ;
 int kb3886bl_intensity ;
 int stub1 (int) ;

__attribute__((used)) static int kb3886bl_send_intensity(struct backlight_device *bd)
{
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  intensity = 0;
 if (kb3886bl_flags & KB3886BL_SUSPENDED)
  intensity = 0;

 bl_machinfo->set_bl_intensity(intensity);

 kb3886bl_intensity = intensity;
 return 0;
}
