
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
struct as3711_bl_data {int brightness; } ;


 struct as3711_bl_data* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int as3711_bl_get_brightness(struct backlight_device *bl)
{
 struct as3711_bl_data *data = bl_get_data(bl);

 return data->brightness;
}
