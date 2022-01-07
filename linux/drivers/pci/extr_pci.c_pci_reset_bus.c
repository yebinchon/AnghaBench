
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; int slot; } ;


 int __pci_reset_bus (int ) ;
 int __pci_reset_slot (int ) ;
 int pci_probe_reset_slot (int ) ;

int pci_reset_bus(struct pci_dev *pdev)
{
 return (!pci_probe_reset_slot(pdev->slot)) ?
     __pci_reset_slot(pdev->slot) : __pci_reset_bus(pdev->bus);
}
