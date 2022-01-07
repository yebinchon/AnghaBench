
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;


 int sony_nc_acpi_handle ;
 scalar_t__ sony_nc_int_call (int ,char*,int *,int*) ;

__attribute__((used)) static int sony_backlight_get_brightness(struct backlight_device *bd)
{
 int value;

 if (sony_nc_int_call(sony_nc_acpi_handle, "GBRT", ((void*)0), &value))
  return 0;

 return value - 1;
}
