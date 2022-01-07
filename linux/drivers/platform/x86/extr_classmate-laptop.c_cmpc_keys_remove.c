
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int cmpc_remove_acpi_notify_device (struct acpi_device*) ;

__attribute__((used)) static int cmpc_keys_remove(struct acpi_device *acpi)
{
 return cmpc_remove_acpi_notify_device(acpi);
}
