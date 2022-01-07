
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ PCIE_BUS_PERFORMANCE ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_READRQ ;
 int ffs (int) ;
 int is_power_of_2 (int) ;
 scalar_t__ pcie_bus_config ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int) ;
 int pcie_get_mps (struct pci_dev*) ;

int pcie_set_readrq(struct pci_dev *dev, int rq)
{
 u16 v;

 if (rq < 128 || rq > 4096 || !is_power_of_2(rq))
  return -EINVAL;






 if (pcie_bus_config == PCIE_BUS_PERFORMANCE) {
  int mps = pcie_get_mps(dev);

  if (mps < rq)
   rq = mps;
 }

 v = (ffs(rq) - 8) << 12;

 return pcie_capability_clear_and_set_word(dev, PCI_EXP_DEVCTL,
        PCI_EXP_DEVCTL_READRQ, v);
}
