
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7621_pcie_port {int dummy; } ;


 int PCIE_PORT_LINKUP ;
 int RALINK_PCI_STATUS ;
 int pcie_port_read (struct mt7621_pcie_port*,int ) ;

__attribute__((used)) static inline bool mt7621_pcie_port_is_linkup(struct mt7621_pcie_port *port)
{
 return (pcie_port_read(port, RALINK_PCI_STATUS) & PCIE_PORT_LINKUP) != 0;
}
