
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_RELAX_EN ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void tegra_pcie_relax_enable(struct pci_dev *dev)
{
 pcie_capability_set_word(dev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_RELAX_EN);
}
