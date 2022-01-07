
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_laptop {int dummy; } ;
struct backlight_device {int dummy; } ;


 struct samsung_laptop* bl_get_data (struct backlight_device*) ;
 int read_brightness (struct samsung_laptop*) ;

__attribute__((used)) static int get_brightness(struct backlight_device *bd)
{
 struct samsung_laptop *samsung = bl_get_data(bd);

 return read_brightness(samsung);
}
