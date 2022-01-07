
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int genericbl_intensity ;

__attribute__((used)) static int genericbl_get_intensity(struct backlight_device *bd)
{
 return genericbl_intensity;
}
