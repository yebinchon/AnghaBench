
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int acpi_device_power_manageable (struct acpi_device*) ;

__attribute__((used)) static bool acpi_pci_power_manageable(struct pci_dev *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(&dev->dev);
 return adev ? acpi_device_power_manageable(adev) : 0;
}
