
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;


 int EINVAL ;
 int PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCAP2_ATOMIC_ROUTE ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_ATOMIC_EGRESS_BLOCK ;
 int PCI_EXP_DEVCTL2_ATOMIC_REQ ;






 int pci_is_pcie (struct pci_dev*) ;
 int const pci_pcie_type (struct pci_dev*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

int pci_enable_atomic_ops_to_root(struct pci_dev *dev, u32 cap_mask)
{
 struct pci_bus *bus = dev->bus;
 struct pci_dev *bridge;
 u32 cap, ctl2;

 if (!pci_is_pcie(dev))
  return -EINVAL;
 switch (pci_pcie_type(dev)) {
 case 132:
 case 131:
 case 130:
  break;
 default:
  return -EINVAL;
 }

 while (bus->parent) {
  bridge = bus->self;

  pcie_capability_read_dword(bridge, PCI_EXP_DEVCAP2, &cap);

  switch (pci_pcie_type(bridge)) {

  case 128:
  case 133:
   if (!(cap & PCI_EXP_DEVCAP2_ATOMIC_ROUTE))
    return -EINVAL;
   break;


  case 129:
   if ((cap & cap_mask) != cap_mask)
    return -EINVAL;
   break;
  }


  if (pci_pcie_type(bridge) == 128) {
   pcie_capability_read_dword(bridge, PCI_EXP_DEVCTL2,
         &ctl2);
   if (ctl2 & PCI_EXP_DEVCTL2_ATOMIC_EGRESS_BLOCK)
    return -EINVAL;
  }

  bus = bus->parent;
 }

 pcie_capability_set_word(dev, PCI_EXP_DEVCTL2,
     PCI_EXP_DEVCTL2_ATOMIC_REQ);
 return 0;
}
