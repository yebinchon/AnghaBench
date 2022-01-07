
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_pcie_phy {TYPE_1__* phy_data; int reg_base; } ;
struct TYPE_2__ {int pcie_status; int pcie_conf; } ;


 int HIWORD_UPDATE (int ,int ,int ) ;
 int PHY_CFG_ADDR_SHIFT ;
 int PHY_CFG_RD_MASK ;
 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline u32 phy_rd_cfg(struct rockchip_pcie_phy *rk_phy,
        u32 addr)
{
 u32 val;

 regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
       HIWORD_UPDATE(addr,
       PHY_CFG_RD_MASK,
       PHY_CFG_ADDR_SHIFT));
 regmap_read(rk_phy->reg_base,
      rk_phy->phy_data->pcie_status,
      &val);
 return val;
}
