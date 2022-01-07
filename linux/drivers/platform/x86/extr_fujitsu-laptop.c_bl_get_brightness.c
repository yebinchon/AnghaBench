
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power; } ;
struct backlight_device {TYPE_1__ props; } ;
struct acpi_device {int dummy; } ;


 scalar_t__ FB_BLANK_POWERDOWN ;
 struct acpi_device* bl_get_data (struct backlight_device*) ;
 int get_lcd_level (struct acpi_device*) ;

__attribute__((used)) static int bl_get_brightness(struct backlight_device *b)
{
 struct acpi_device *device = bl_get_data(b);

 return b->props.power == FB_BLANK_POWERDOWN ? 0 : get_lcd_level(device);
}
