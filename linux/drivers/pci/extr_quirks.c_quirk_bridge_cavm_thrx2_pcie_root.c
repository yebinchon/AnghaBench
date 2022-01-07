
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; } ;


 int PCI_DEV_FLAGS_BRIDGE_XLATE_ROOT ;

__attribute__((used)) static void quirk_bridge_cavm_thrx2_pcie_root(struct pci_dev *pdev)
{
 pdev->dev_flags |= PCI_DEV_FLAGS_BRIDGE_XLATE_ROOT;
}
