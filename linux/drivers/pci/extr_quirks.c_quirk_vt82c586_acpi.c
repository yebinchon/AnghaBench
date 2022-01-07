
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int revision; } ;


 int PCI_BRIDGE_RESOURCES ;
 int quirk_io_region (struct pci_dev*,int,int,int ,char*) ;

__attribute__((used)) static void quirk_vt82c586_acpi(struct pci_dev *dev)
{
 if (dev->revision & 0x10)
  quirk_io_region(dev, 0x48, 256, PCI_BRIDGE_RESOURCES,
    "vt82c586 ACPI");
}
