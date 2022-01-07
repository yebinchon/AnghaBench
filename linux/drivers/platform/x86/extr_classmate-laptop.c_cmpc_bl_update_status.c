
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int bl_get_data (struct backlight_device*) ;
 int cmpc_set_brightness (int ,int ) ;

__attribute__((used)) static int cmpc_bl_update_status(struct backlight_device *bd)
{
 acpi_status status;
 acpi_handle handle;

 handle = bl_get_data(bd);
 status = cmpc_set_brightness(handle, bd->props.brightness);
 if (ACPI_SUCCESS(status))
  return 0;
 else
  return -1;
}
