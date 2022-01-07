
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pcie_flr (struct pci_dev*) ;

__attribute__((used)) static int reset_intel_82599_sfp_virtfn(struct pci_dev *dev, int probe)
{
 if (!probe)
  pcie_flr(dev);
 return 0;
}
