
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;


 int acpi_add_pm_notifier (struct acpi_device*,int *,int ) ;
 int pci_acpi_wake_dev ;

acpi_status pci_acpi_add_pm_notifier(struct acpi_device *dev,
         struct pci_dev *pci_dev)
{
 return acpi_add_pm_notifier(dev, &pci_dev->dev, pci_acpi_wake_dev);
}
