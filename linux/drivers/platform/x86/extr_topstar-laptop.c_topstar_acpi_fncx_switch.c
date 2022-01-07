
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int acpi_execute_simple_method (int ,char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int topstar_acpi_fncx_switch(struct acpi_device *device, bool state)
{
 acpi_status status;
 u64 arg = state ? 0x86 : 0x87;

 status = acpi_execute_simple_method(device->handle, "FNCX", arg);
 if (ACPI_FAILURE(status)) {
  pr_err("Unable to switch FNCX notifications\n");
  return -ENODEV;
 }

 return 0;
}
