
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ PCI_BRIDGE_RESOURCES ;
 int quirk_io_region (struct pci_dev*,int,int,scalar_t__,char*) ;

__attribute__((used)) static void quirk_vt8235_acpi(struct pci_dev *dev)
{
 quirk_io_region(dev, 0x88, 128, PCI_BRIDGE_RESOURCES, "vt8235 PM");
 quirk_io_region(dev, 0xd0, 16, PCI_BRIDGE_RESOURCES+1, "vt8235 SMB");
}
