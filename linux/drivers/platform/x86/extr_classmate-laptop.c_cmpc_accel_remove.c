
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;


 int cmpc_accel_sensitivity_attr ;
 int cmpc_remove_acpi_notify_device (struct acpi_device*) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int cmpc_accel_remove(struct acpi_device *acpi)
{
 device_remove_file(&acpi->dev, &cmpc_accel_sensitivity_attr);
 return cmpc_remove_acpi_notify_device(acpi);
}
