
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int hp680bl_send_intensity (struct backlight_device*) ;

__attribute__((used)) static int hp680bl_set_intensity(struct backlight_device *bd)
{
 hp680bl_send_intensity(bd);
 return 0;
}
