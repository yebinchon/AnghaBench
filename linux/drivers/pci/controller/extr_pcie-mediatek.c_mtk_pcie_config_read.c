
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;
struct mtk_pcie_port {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 struct mtk_pcie_port* mtk_pcie_find_port (struct pci_bus*,unsigned int) ;
 int mtk_pcie_hw_rd_cfg (struct mtk_pcie_port*,int ,unsigned int,int,int,int *) ;

__attribute__((used)) static int mtk_pcie_config_read(struct pci_bus *bus, unsigned int devfn,
    int where, int size, u32 *val)
{
 struct mtk_pcie_port *port;
 u32 bn = bus->number;
 int ret;

 port = mtk_pcie_find_port(bus, devfn);
 if (!port) {
  *val = ~0;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 ret = mtk_pcie_hw_rd_cfg(port, bn, devfn, where, size, val);
 if (ret)
  *val = ~0;

 return ret;
}
