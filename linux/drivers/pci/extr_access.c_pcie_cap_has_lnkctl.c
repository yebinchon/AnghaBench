
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_TYPE_DOWNSTREAM ;
 int PCI_EXP_TYPE_ENDPOINT ;
 int PCI_EXP_TYPE_LEG_END ;
 int PCI_EXP_TYPE_PCIE_BRIDGE ;
 int PCI_EXP_TYPE_PCI_BRIDGE ;
 int PCI_EXP_TYPE_ROOT_PORT ;
 int PCI_EXP_TYPE_UPSTREAM ;
 int pci_pcie_type (struct pci_dev const*) ;

bool pcie_cap_has_lnkctl(const struct pci_dev *dev)
{
 int type = pci_pcie_type(dev);

 return type == PCI_EXP_TYPE_ENDPOINT ||
        type == PCI_EXP_TYPE_LEG_END ||
        type == PCI_EXP_TYPE_ROOT_PORT ||
        type == PCI_EXP_TYPE_UPSTREAM ||
        type == PCI_EXP_TYPE_DOWNSTREAM ||
        type == PCI_EXP_TYPE_PCI_BRIDGE ||
        type == PCI_EXP_TYPE_PCIE_BRIDGE;
}
