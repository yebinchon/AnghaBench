
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_pcie_port {int pcie_rst; } ;


 int CHIP_REV_MT7621_E2 ;
 int MT7621_CHIP_REV_ID ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int rt_sysc_r32 (int ) ;

__attribute__((used)) static inline void mt7621_control_assert(struct mt7621_pcie_port *port)
{
 u32 chip_rev_id = rt_sysc_r32(MT7621_CHIP_REV_ID);

 if ((chip_rev_id & 0xFFFF) == CHIP_REV_MT7621_E2)
  reset_control_assert(port->pcie_rst);
 else
  reset_control_deassert(port->pcie_rst);
}
