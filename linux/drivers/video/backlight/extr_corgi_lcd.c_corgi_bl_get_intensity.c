
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgi_lcd {int intensity; } ;
struct backlight_device {int dummy; } ;


 struct corgi_lcd* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int corgi_bl_get_intensity(struct backlight_device *bd)
{
 struct corgi_lcd *lcd = bl_get_data(bd);

 return lcd->intensity;
}
