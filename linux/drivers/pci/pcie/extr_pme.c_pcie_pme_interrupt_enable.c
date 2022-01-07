
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_RTCTL ;
 int PCI_EXP_RTCTL_PMEIE ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int ) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

void pcie_pme_interrupt_enable(struct pci_dev *dev, bool enable)
{
 if (enable)
  pcie_capability_set_word(dev, PCI_EXP_RTCTL,
      PCI_EXP_RTCTL_PMEIE);
 else
  pcie_capability_clear_word(dev, PCI_EXP_RTCTL,
        PCI_EXP_RTCTL_PMEIE);
}
