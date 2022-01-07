
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct acpi_device {int dummy; } ;


 int BACKLIGHT_OFF ;
 int BACKLIGHT_ON ;
 int BACKLIGHT_PARAM_POWER ;
 scalar_t__ FB_BLANK_POWERDOWN ;
 int FUNC_BACKLIGHT ;
 struct acpi_device* bl_get_data (struct backlight_device*) ;
 int call_fext_func (scalar_t__,int ,int,int ,int ) ;
 scalar_t__ fext ;
 int set_lcd_level (struct acpi_device*,int ) ;

__attribute__((used)) static int bl_update_status(struct backlight_device *b)
{
 struct acpi_device *device = bl_get_data(b);

 if (fext) {
  if (b->props.power == FB_BLANK_POWERDOWN)
   call_fext_func(fext, FUNC_BACKLIGHT, 0x1,
           BACKLIGHT_PARAM_POWER, BACKLIGHT_OFF);
  else
   call_fext_func(fext, FUNC_BACKLIGHT, 0x1,
           BACKLIGHT_PARAM_POWER, BACKLIGHT_ON);
 }

 return set_lcd_level(device, b->props.brightness);
}
