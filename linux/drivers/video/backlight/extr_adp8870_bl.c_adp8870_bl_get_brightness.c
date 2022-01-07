
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
struct adp8870_bl {int current_brightness; } ;


 struct adp8870_bl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int adp8870_bl_get_brightness(struct backlight_device *bl)
{
 struct adp8870_bl *data = bl_get_data(bl);

 return data->current_brightness;
}
