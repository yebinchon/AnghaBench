
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ PCI_BRIDGE_RESOURCES ;
 int quirk_io_region (struct pci_dev*,int,int,scalar_t__,char*) ;
 int quirk_vt82c586_acpi (struct pci_dev*) ;

__attribute__((used)) static void quirk_vt82c686_acpi(struct pci_dev *dev)
{
 quirk_vt82c586_acpi(dev);

 quirk_io_region(dev, 0x70, 128, PCI_BRIDGE_RESOURCES+1,
     "vt82c686 HW-mon");

 quirk_io_region(dev, 0x90, 16, PCI_BRIDGE_RESOURCES+2, "vt82c686 SMB");
}
