
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ subordinate; } ;


 int pci_walk_bus (scalar_t__,int (*) (struct pci_dev*,int *),int *) ;
 int pcie_pme_can_wakeup (struct pci_dev*,int *) ;

__attribute__((used)) static void pcie_pme_mark_devices(struct pci_dev *port)
{
 pcie_pme_can_wakeup(port, ((void*)0));
 if (port->subordinate)
  pci_walk_bus(port->subordinate, pcie_pme_can_wakeup, ((void*)0));
}
