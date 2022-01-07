
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct pci_bus {int cur_bus_speed; } ;


 size_t PCI_EXP_LNKSTA_CLS ;
 int * pcie_link_speed ;

void pcie_update_link_speed(struct pci_bus *bus, u16 linksta)
{
 bus->cur_bus_speed = pcie_link_speed[linksta & PCI_EXP_LNKSTA_CLS];
}
