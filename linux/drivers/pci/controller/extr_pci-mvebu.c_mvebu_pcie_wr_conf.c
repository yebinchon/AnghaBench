
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {scalar_t__ number; struct mvebu_pcie* sysdata; } ;
struct mvebu_pcie_port {int bridge; } ;
struct mvebu_pcie {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 struct mvebu_pcie_port* mvebu_pcie_find_port (struct mvebu_pcie*,struct pci_bus*,int ) ;
 int mvebu_pcie_hw_wr_conf (struct mvebu_pcie_port*,struct pci_bus*,int ,int,int,int ) ;
 int mvebu_pcie_link_up (struct mvebu_pcie_port*) ;
 int pci_bridge_emul_conf_write (int *,int,int,int ) ;

__attribute__((used)) static int mvebu_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
         int where, int size, u32 val)
{
 struct mvebu_pcie *pcie = bus->sysdata;
 struct mvebu_pcie_port *port;
 int ret;

 port = mvebu_pcie_find_port(pcie, bus, devfn);
 if (!port)
  return PCIBIOS_DEVICE_NOT_FOUND;


 if (bus->number == 0)
  return pci_bridge_emul_conf_write(&port->bridge, where,
        size, val);

 if (!mvebu_pcie_link_up(port))
  return PCIBIOS_DEVICE_NOT_FOUND;


 ret = mvebu_pcie_hw_wr_conf(port, bus, devfn,
        where, size, val);

 return ret;
}
