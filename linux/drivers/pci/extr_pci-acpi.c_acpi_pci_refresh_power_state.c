
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 scalar_t__ acpi_device_power_manageable (struct acpi_device*) ;
 int acpi_device_update_power (struct acpi_device*,int *) ;

__attribute__((used)) static void acpi_pci_refresh_power_state(struct pci_dev *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(&dev->dev);

 if (adev && acpi_device_power_manageable(adev))
  acpi_device_update_power(adev, ((void*)0));
}
