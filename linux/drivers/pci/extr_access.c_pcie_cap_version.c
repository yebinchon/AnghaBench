
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_FLAGS_VERS ;
 int pcie_caps_reg (struct pci_dev const*) ;

__attribute__((used)) static inline int pcie_cap_version(const struct pci_dev *dev)
{
 return pcie_caps_reg(dev) & PCI_EXP_FLAGS_VERS;
}
