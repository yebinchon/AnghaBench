
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ pci_pcie_cap (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;
 int pcie_capability_reg_implemented (struct pci_dev*,int) ;

int pcie_capability_write_dword(struct pci_dev *dev, int pos, u32 val)
{
 if (pos & 3)
  return -EINVAL;

 if (!pcie_capability_reg_implemented(dev, pos))
  return 0;

 return pci_write_config_dword(dev, pci_pcie_cap(dev) + pos, val);
}
