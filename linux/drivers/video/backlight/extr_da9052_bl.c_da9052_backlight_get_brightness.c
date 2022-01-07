
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_bl {int brightness; } ;
struct backlight_device {int dummy; } ;


 struct da9052_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int da9052_backlight_get_brightness(struct backlight_device *bl)
{
 struct da9052_bl *wleds = bl_get_data(bl);

 return wleds->brightness;
}
