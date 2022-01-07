
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {scalar_t__ root_bus_nr; } ;
struct pci_bus {scalar_t__ number; } ;
struct dw_pcie {int dummy; } ;


 int dw_pcie_link_up (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
    int dev)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);


 if (bus->number != pp->root_bus_nr) {
  if (!dw_pcie_link_up(pci))
   return 0;
 }


 if (bus->number == pp->root_bus_nr && dev > 0)
  return 0;

 return 1;
}
