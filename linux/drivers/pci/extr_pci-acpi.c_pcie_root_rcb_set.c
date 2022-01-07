
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_RCB ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 struct pci_dev* pcie_find_root_port (struct pci_dev*) ;

__attribute__((used)) static bool pcie_root_rcb_set(struct pci_dev *dev)
{
 struct pci_dev *rp = pcie_find_root_port(dev);
 u16 lnkctl;

 if (!rp)
  return 0;

 pcie_capability_read_word(rp, PCI_EXP_LNKCTL, &lnkctl);
 if (lnkctl & PCI_EXP_LNKCTL_RCB)
  return 1;

 return 0;
}
