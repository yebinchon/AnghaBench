
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ is_virtfn; int devfn; } ;


 scalar_t__ PCI_EXP_TYPE_ENDPOINT ;
 scalar_t__ PCI_EXP_TYPE_LEG_END ;
 scalar_t__ PCI_EXP_TYPE_UPSTREAM ;
 scalar_t__ PCI_FUNC (int ) ;
 int __pcie_print_link_status (struct pci_dev*,int) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

void pcie_report_downtraining(struct pci_dev *dev)
{
 if (!pci_is_pcie(dev))
  return;


 if ((pci_pcie_type(dev) != PCI_EXP_TYPE_ENDPOINT) &&
     (pci_pcie_type(dev) != PCI_EXP_TYPE_LEG_END) &&
     (pci_pcie_type(dev) != PCI_EXP_TYPE_UPSTREAM))
  return;


 if (PCI_FUNC(dev->devfn) != 0 || dev->is_virtfn)
  return;


 __pcie_print_link_status(dev, 0);
}
