
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_NUM_RESOURCES ;
 unsigned long pci_resource_flags (struct pci_dev*,int) ;

int pci_select_bars(struct pci_dev *dev, unsigned long flags)
{
 int i, bars = 0;
 for (i = 0; i < PCI_NUM_RESOURCES; i++)
  if (pci_resource_flags(dev, i) & flags)
   bars |= (1 << i);
 return bars;
}
