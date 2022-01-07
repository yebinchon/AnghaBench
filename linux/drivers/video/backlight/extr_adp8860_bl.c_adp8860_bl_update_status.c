
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int adp8860_bl_set (struct backlight_device*,int) ;

__attribute__((used)) static int adp8860_bl_update_status(struct backlight_device *bl)
{
 int brightness = bl->props.brightness;

 if (bl->props.power != FB_BLANK_UNBLANK)
  brightness = 0;

 if (bl->props.fb_blank != FB_BLANK_UNBLANK)
  brightness = 0;

 return adp8860_bl_set(bl, brightness);
}
