
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; } ;


 int PCI_DEV_FLAGS_NO_FLR_RESET ;

__attribute__((used)) static void quirk_intel_no_flr(struct pci_dev *dev)
{
 dev->dev_flags |= PCI_DEV_FLAGS_NO_FLR_RESET;
}
