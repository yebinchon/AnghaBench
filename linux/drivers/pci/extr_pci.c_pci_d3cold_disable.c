
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int no_d3cold; } ;


 int pci_bridge_d3_update (struct pci_dev*) ;

void pci_d3cold_disable(struct pci_dev *dev)
{
 if (!dev->no_d3cold) {
  dev->no_d3cold = 1;
  pci_bridge_d3_update(dev);
 }
}
