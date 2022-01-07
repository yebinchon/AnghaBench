
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; scalar_t__ is_virtfn; } ;


 int PCI_DEV_FLAGS_NO_RELAXED_ORDERING ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_RELAX_EN ;
 struct pci_dev* pci_find_pcie_root_port (struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int ) ;
 int pcie_relaxed_ordering_enabled (struct pci_dev*) ;

__attribute__((used)) static void pci_configure_relaxed_ordering(struct pci_dev *dev)
{
 struct pci_dev *root;


 if (dev->is_virtfn)
  return;

 if (!pcie_relaxed_ordering_enabled(dev))
  return;





 root = pci_find_pcie_root_port(dev);
 if (!root)
  return;

 if (root->dev_flags & PCI_DEV_FLAGS_NO_RELAXED_ORDERING) {
  pcie_capability_clear_word(dev, PCI_EXP_DEVCTL,
        PCI_EXP_DEVCTL_RELAX_EN);
  pci_info(dev, "Relaxed Ordering disabled because the Root Port didn't support it\n");
 }
}
