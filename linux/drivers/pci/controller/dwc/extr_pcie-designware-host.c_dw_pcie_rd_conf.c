
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_port {scalar_t__ root_bus_nr; } ;
struct pci_bus {scalar_t__ number; struct pcie_port* sysdata; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCI_SLOT (int) ;
 int dw_pcie_rd_other_conf (struct pcie_port*,struct pci_bus*,int,int,int,int*) ;
 int dw_pcie_rd_own_conf (struct pcie_port*,int,int,int*) ;
 int dw_pcie_valid_device (struct pcie_port*,struct pci_bus*,int ) ;

__attribute__((used)) static int dw_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
      int size, u32 *val)
{
 struct pcie_port *pp = bus->sysdata;

 if (!dw_pcie_valid_device(pp, bus, PCI_SLOT(devfn))) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 if (bus->number == pp->root_bus_nr)
  return dw_pcie_rd_own_conf(pp, where, size, val);

 return dw_pcie_rd_other_conf(pp, bus, devfn, where, size, val);
}
