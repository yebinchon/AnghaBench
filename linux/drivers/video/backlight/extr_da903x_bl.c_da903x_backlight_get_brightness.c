
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da903x_backlight_data {int current_brightness; } ;
struct backlight_device {int dummy; } ;


 struct da903x_backlight_data* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int da903x_backlight_get_brightness(struct backlight_device *bl)
{
 struct da903x_backlight_data *data = bl_get_data(bl);

 return data->current_brightness;
}
