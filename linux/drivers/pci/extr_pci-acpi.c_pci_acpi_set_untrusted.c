
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int untrusted; int dev; } ;


 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ device_property_read_u8 (int *,char*,scalar_t__*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

__attribute__((used)) static void pci_acpi_set_untrusted(struct pci_dev *dev)
{
 u8 val;

 if (pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT)
  return;
 if (device_property_read_u8(&dev->dev, "ExternalFacingPort", &val))
  return;






 if (val)
  dev->untrusted = 1;
}
