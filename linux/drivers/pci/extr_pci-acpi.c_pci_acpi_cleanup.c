
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ bridge_d3; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ valid; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ wakeup; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int acpi_device_power_remove_dependent (struct acpi_device*,struct device*) ;
 int device_set_wakeup_capable (struct device*,int) ;
 int device_wakeup_disable (struct device*) ;
 int pci_acpi_remove_pm_notifier (struct acpi_device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void pci_acpi_cleanup(struct device *dev)
{
 struct acpi_device *adev = ACPI_COMPANION(dev);
 struct pci_dev *pci_dev = to_pci_dev(dev);

 if (!adev)
  return;

 pci_acpi_remove_pm_notifier(adev);
 if (adev->wakeup.flags.valid) {
  acpi_device_power_remove_dependent(adev, dev);
  if (pci_dev->bridge_d3)
   device_wakeup_disable(dev);

  device_set_wakeup_capable(dev, 0);
 }
}
