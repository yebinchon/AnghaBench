
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int current_intensity ;

__attribute__((used)) static int hp680bl_get_intensity(struct backlight_device *bd)
{
 return current_intensity;
}
