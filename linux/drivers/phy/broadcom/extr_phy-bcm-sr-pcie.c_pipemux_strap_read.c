
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sr_pcie_phy_core {int cdru; scalar_t__ base; } ;


 int CDRU_STRAP_DATA_LSW_OFFSET ;
 scalar_t__ PCIE_PIPEMUX_CFG_OFFSET ;
 int PCIE_PIPEMUX_MASK ;
 int PCIE_PIPEMUX_SELECT_STRAP ;
 int PCIE_PIPEMUX_SHIFT ;
 int readl (scalar_t__) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static u32 pipemux_strap_read(struct sr_pcie_phy_core *core)
{
 u32 pipemux;







 pipemux = readl(core->base + PCIE_PIPEMUX_CFG_OFFSET);
 pipemux &= PCIE_PIPEMUX_MASK;
 if (pipemux == PCIE_PIPEMUX_SELECT_STRAP) {
  regmap_read(core->cdru, CDRU_STRAP_DATA_LSW_OFFSET, &pipemux);
  pipemux >>= PCIE_PIPEMUX_SHIFT;
  pipemux &= PCIE_PIPEMUX_MASK;
 }

 return pipemux;
}
