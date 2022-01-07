
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {int dummy; } ;


 int XILINX_PCIE_REG_PSCR ;
 int XILINX_PCIE_REG_PSCR_LNKUP ;
 int pcie_read (struct xilinx_pcie_port*,int ) ;

__attribute__((used)) static inline bool xilinx_pcie_link_up(struct xilinx_pcie_port *port)
{
 return (pcie_read(port, XILINX_PCIE_REG_PSCR) &
  XILINX_PCIE_REG_PSCR_LNKUP) ? 1 : 0;
}
