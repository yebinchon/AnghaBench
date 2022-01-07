
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_bus {scalar_t__ number; } ;
struct TYPE_3__ {scalar_t__ secondary_bus; scalar_t__ subordinate_bus; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;
struct mvebu_pcie_port {int devfn; TYPE_2__ bridge; } ;
struct mvebu_pcie {int nports; struct mvebu_pcie_port* ports; } ;



__attribute__((used)) static struct mvebu_pcie_port *mvebu_pcie_find_port(struct mvebu_pcie *pcie,
          struct pci_bus *bus,
          int devfn)
{
 int i;

 for (i = 0; i < pcie->nports; i++) {
  struct mvebu_pcie_port *port = &pcie->ports[i];

  if (bus->number == 0 && port->devfn == devfn)
   return port;
  if (bus->number != 0 &&
      bus->number >= port->bridge.conf.secondary_bus &&
      bus->number <= port->bridge.conf.subordinate_bus)
   return port;
 }

 return ((void*)0);
}
