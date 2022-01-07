
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int get_backlight_level () ;

__attribute__((used)) static int bl_get_brightness(struct backlight_device *b)
{
 return get_backlight_level();
}
