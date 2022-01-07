
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;
 scalar_t__ PCI_EXP_TYPE_UPSTREAM ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;

__attribute__((used)) static struct pci_dev *get_upstream_port(struct pci_dev *pdev)
{
 struct pci_dev *parent;

 parent = pci_upstream_bridge(pdev);
 while (parent) {
  if (!pci_is_pcie(parent))
   return ((void*)0);
  if (pci_pcie_type(parent) == PCI_EXP_TYPE_UPSTREAM)
   break;
  parent = pci_upstream_bridge(parent);
 }

 if (!parent)
  return ((void*)0);

 switch (parent->device) {
 case 134:
 case 133:
 case 130:
 case 131:
 case 132:
 case 129:
 case 128:
  return parent;
 }

 return ((void*)0);
}
