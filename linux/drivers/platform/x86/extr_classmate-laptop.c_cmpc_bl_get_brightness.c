
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int bl_get_data (struct backlight_device*) ;
 int cmpc_get_brightness (int ,unsigned long long*) ;

__attribute__((used)) static int cmpc_bl_get_brightness(struct backlight_device *bd)
{
 acpi_status status;
 acpi_handle handle;
 unsigned long long brightness;

 handle = bl_get_data(bd);
 status = cmpc_get_brightness(handle, &brightness);
 if (ACPI_SUCCESS(status))
  return brightness;
 else
  return -1;
}
