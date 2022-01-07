
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sr_pcie_phy_core {size_t pipemux; } ;
struct sr_pcie_phy {unsigned int index; struct sr_pcie_phy_core* core; } ;


 unsigned int* pipemux_table ;

__attribute__((used)) static bool pcie_core_is_for_rc(struct sr_pcie_phy *phy)
{
 struct sr_pcie_phy_core *core = phy->core;
 unsigned int core_idx = phy->index;

 return !!((pipemux_table[core->pipemux] >> core_idx) & 0x1);
}
