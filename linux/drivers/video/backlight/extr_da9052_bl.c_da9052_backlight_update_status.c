
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct da9052_bl {int brightness; int state; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int DA9052_WLEDS_ON ;
 struct da9052_bl* bl_get_data (struct backlight_device*) ;
 int da9052_adjust_wled_brightness (struct da9052_bl*) ;

__attribute__((used)) static int da9052_backlight_update_status(struct backlight_device *bl)
{
 int brightness = bl->props.brightness;
 struct da9052_bl *wleds = bl_get_data(bl);

 wleds->brightness = brightness;
 wleds->state = DA9052_WLEDS_ON;

 return da9052_adjust_wled_brightness(wleds);
}
