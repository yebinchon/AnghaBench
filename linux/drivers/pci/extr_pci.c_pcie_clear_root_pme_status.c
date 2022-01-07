
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_RTSTA ;
 int PCI_EXP_RTSTA_PME ;
 int pcie_capability_set_dword (struct pci_dev*,int ,int ) ;

void pcie_clear_root_pme_status(struct pci_dev *dev)
{
 pcie_capability_set_dword(dev, PCI_EXP_RTSTA, PCI_EXP_RTSTA_PME);
}
