
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_BRIDGE_RESOURCES ;
 int pci_update_resource (struct pci_dev*,int) ;

__attribute__((used)) static void pci_restore_bars(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < PCI_BRIDGE_RESOURCES; i++)
  pci_update_resource(dev, i);
}
