
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_backlight {int gpiod; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; int state; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 struct gpio_backlight* bl_get_data (struct backlight_device*) ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static int gpio_backlight_update_status(struct backlight_device *bl)
{
 struct gpio_backlight *gbl = bl_get_data(bl);
 int brightness = bl->props.brightness;

 if (bl->props.power != FB_BLANK_UNBLANK ||
     bl->props.fb_blank != FB_BLANK_UNBLANK ||
     bl->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK))
  brightness = 0;

 gpiod_set_value_cansleep(gbl->gpiod, brightness);

 return 0;
}
