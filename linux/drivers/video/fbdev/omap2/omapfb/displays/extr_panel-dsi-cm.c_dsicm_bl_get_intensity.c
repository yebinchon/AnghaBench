
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fb_blank; scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;

__attribute__((used)) static int dsicm_bl_get_intensity(struct backlight_device *dev)
{
 if (dev->props.fb_blank == FB_BLANK_UNBLANK &&
   dev->props.power == FB_BLANK_UNBLANK)
  return dev->props.brightness;

 return 0;
}
