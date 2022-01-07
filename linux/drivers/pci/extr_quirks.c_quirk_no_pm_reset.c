
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; int bus; } ;


 int PCI_DEV_FLAGS_NO_PM_RESET ;
 int pci_is_root_bus (int ) ;

__attribute__((used)) static void quirk_no_pm_reset(struct pci_dev *dev)
{




 if (!pci_is_root_bus(dev->bus))
  dev->dev_flags |= PCI_DEV_FLAGS_NO_PM_RESET;
}
