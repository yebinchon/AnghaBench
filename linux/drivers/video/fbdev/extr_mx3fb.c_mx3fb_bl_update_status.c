
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mx3fb_data {int backlight_level; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 struct mx3fb_data* bl_get_data (struct backlight_device*) ;
 int sdc_set_brightness (struct mx3fb_data*,int) ;

__attribute__((used)) static int mx3fb_bl_update_status(struct backlight_device *bl)
{
 struct mx3fb_data *fbd = bl_get_data(bl);
 int brightness = bl->props.brightness;

 if (bl->props.power != FB_BLANK_UNBLANK)
  brightness = 0;
 if (bl->props.fb_blank != FB_BLANK_UNBLANK)
  brightness = 0;

 fbd->backlight_level = (fbd->backlight_level & ~0xFF) | brightness;

 sdc_set_brightness(fbd, fbd->backlight_level);

 return 0;
}
