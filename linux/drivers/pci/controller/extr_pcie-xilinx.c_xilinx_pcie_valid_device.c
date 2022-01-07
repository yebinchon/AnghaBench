
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {scalar_t__ root_busno; } ;
struct pci_bus {scalar_t__ number; struct xilinx_pcie_port* sysdata; } ;


 int xilinx_pcie_link_up (struct xilinx_pcie_port*) ;

__attribute__((used)) static bool xilinx_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
{
 struct xilinx_pcie_port *port = bus->sysdata;


 if (bus->number != port->root_busno)
  if (!xilinx_pcie_link_up(port))
   return 0;


 if (bus->number == port->root_busno && devfn > 0)
  return 0;

 return 1;
}
