
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
 int pci_is_pcie (struct pci_dev*) ;
 int pcie_cap_has_lnkctl (struct pci_dev*) ;
 int pcie_cap_has_rtctl (struct pci_dev*) ;
 int pcie_cap_has_sltctl (struct pci_dev*) ;
 int pcie_cap_version (struct pci_dev*) ;

__attribute__((used)) static bool pcie_capability_reg_implemented(struct pci_dev *dev, int pos)
{
 if (!pci_is_pcie(dev))
  return 0;

 switch (pos) {
 case 140:
  return 1;
 case 145:
 case 143:
 case 141:
  return 1;
 case 139:
 case 137:
 case 135:
  return pcie_cap_has_lnkctl(dev);
 case 130:
 case 129:
 case 128:
  return pcie_cap_has_sltctl(dev);
 case 132:
 case 133:
 case 131:
  return pcie_cap_has_rtctl(dev);
 case 144:
 case 142:
 case 138:
 case 136:
 case 134:
  return pcie_cap_version(dev) > 1;
 default:
  return 0;
 }
}
