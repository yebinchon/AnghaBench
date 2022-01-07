
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int revision; TYPE_1__* subordinate; } ;
struct TYPE_2__ {int bus_flags; } ;


 int PCI_BUS_FLAGS_NO_MMRBC ;
 int pci_info (struct pci_dev*,char*,int) ;

__attribute__((used)) static void quirk_amd_8131_mmrbc(struct pci_dev *dev)
{
 if (dev->subordinate && dev->revision <= 0x12) {
  pci_info(dev, "AMD8131 rev %x detected; disabling PCI-X MMRBC\n",
    dev->revision);
  dev->subordinate->bus_flags |= PCI_BUS_FLAGS_NO_MMRBC;
 }
}
