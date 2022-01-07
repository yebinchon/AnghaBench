
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int pci_power_t ;


 int PCI_D3hot ;

__attribute__((used)) static pci_power_t mid_pci_choose_state(struct pci_dev *pdev)
{
 return PCI_D3hot;
}
