
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; int dev; } ;


 int acpi_pci_propagate_wakeup (int ,int) ;
 scalar_t__ acpi_pm_device_can_wakeup (int *) ;
 int acpi_pm_set_device_wakeup (int *,int) ;

__attribute__((used)) static int acpi_pci_wakeup(struct pci_dev *dev, bool enable)
{
 if (acpi_pm_device_can_wakeup(&dev->dev))
  return acpi_pm_set_device_wakeup(&dev->dev, enable);

 return acpi_pci_propagate_wakeup(dev->bus, enable);
}
