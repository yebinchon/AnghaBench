
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7621_pcie_port {int slot; } ;


 int PCIE_PORT_CLK_EN (int ) ;
 int RALINK_CLKCFG1 ;
 int rt_sysc_m32 (int ,int ,int ) ;

__attribute__((used)) static inline void mt7621_pcie_port_clk_disable(struct mt7621_pcie_port *port)
{
 rt_sysc_m32(PCIE_PORT_CLK_EN(port->slot), 0, RALINK_CLKCFG1);
}
