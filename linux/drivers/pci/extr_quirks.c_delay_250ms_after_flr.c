
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENOTTY ;
 int msleep (int) ;
 int pcie_flr (struct pci_dev*) ;
 int pcie_has_flr (struct pci_dev*) ;

__attribute__((used)) static int delay_250ms_after_flr(struct pci_dev *dev, int probe)
{
 if (!pcie_has_flr(dev))
  return -ENOTTY;

 if (probe)
  return 0;

 pcie_flr(dev);

 msleep(250);

 return 0;
}
