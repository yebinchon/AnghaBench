
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_RELAX_EN ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

bool pcie_relaxed_ordering_enabled(struct pci_dev *dev)
{
 u16 v;

 pcie_capability_read_word(dev, PCI_EXP_DEVCTL, &v);

 return !!(v & PCI_EXP_DEVCTL_RELAX_EN);
}
