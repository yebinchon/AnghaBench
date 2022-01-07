
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xxbl {int brightness; } ;
struct backlight_device {int dummy; } ;


 struct ep93xxbl* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int ep93xxbl_get_brightness(struct backlight_device *bl)
{
 struct ep93xxbl *ep93xxbl = bl_get_data(bl);

 return ep93xxbl->brightness;
}
