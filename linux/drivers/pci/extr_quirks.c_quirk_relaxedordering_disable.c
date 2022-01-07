
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; } ;


 int PCI_DEV_FLAGS_NO_RELAXED_ORDERING ;
 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_relaxedordering_disable(struct pci_dev *dev)
{
 dev->dev_flags |= PCI_DEV_FLAGS_NO_RELAXED_ORDERING;
 pci_info(dev, "Disable Relaxed Ordering Attributes to avoid PCIe Completion erratum\n");
}
