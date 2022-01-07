
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int state; } ;
struct acpi_device {TYPE_1__ power; } ;
typedef int const pci_power_t ;


 struct acpi_device* ACPI_COMPANION (int *) ;





 int ACPI_STATE_UNKNOWN ;





 int const PCI_UNKNOWN ;
 int acpi_device_power_manageable (struct acpi_device*) ;

__attribute__((used)) static pci_power_t acpi_pci_get_power_state(struct pci_dev *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(&dev->dev);
 static const pci_power_t state_conv[] = {
  [137] = 132,
  [136] = 131,
  [135] = 130,
  [133] = 128,
  [134] = 129,
 };
 int state;

 if (!adev || !acpi_device_power_manageable(adev))
  return PCI_UNKNOWN;

 state = adev->power.state;
 if (state == ACPI_STATE_UNKNOWN)
  return PCI_UNKNOWN;

 return state_conv[state];
}
