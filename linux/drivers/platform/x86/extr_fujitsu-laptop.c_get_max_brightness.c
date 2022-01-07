
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fujitsu_bl {unsigned long long max_brightness; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 struct fujitsu_bl* acpi_driver_data (struct acpi_device*) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_handle_debug (int ,char*) ;

__attribute__((used)) static int get_max_brightness(struct acpi_device *device)
{
 struct fujitsu_bl *priv = acpi_driver_data(device);
 unsigned long long state = 0;
 acpi_status status = AE_OK;

 acpi_handle_debug(device->handle, "get max lcd level via RBLL\n");

 status = acpi_evaluate_integer(device->handle, "RBLL", ((void*)0), &state);
 if (ACPI_FAILURE(status))
  return -1;

 priv->max_brightness = state;

 return priv->max_brightness;
}
