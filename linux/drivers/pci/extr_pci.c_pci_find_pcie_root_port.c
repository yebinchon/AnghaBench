
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;

struct pci_dev *pci_find_pcie_root_port(struct pci_dev *dev)
{
 struct pci_dev *bridge, *highest_pcie_bridge = dev;

 bridge = pci_upstream_bridge(dev);
 while (bridge && pci_is_pcie(bridge)) {
  highest_pcie_bridge = bridge;
  bridge = pci_upstream_bridge(bridge);
 }

 if (pci_pcie_type(highest_pcie_bridge) != PCI_EXP_TYPE_ROOT_PORT)
  return ((void*)0);

 return highest_pcie_bridge;
}
