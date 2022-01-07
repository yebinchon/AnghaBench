
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_pcie_phy {TYPE_1__* phy_data; int reg_base; } ;
struct TYPE_2__ {int pcie_conf; } ;


 int HIWORD_UPDATE (int ,int ,int ) ;
 int PHY_CFG_ADDR_MASK ;
 int PHY_CFG_ADDR_SHIFT ;
 int PHY_CFG_DATA_MASK ;
 int PHY_CFG_DATA_SHIFT ;
 int PHY_CFG_WR_DISABLE ;
 int PHY_CFG_WR_ENABLE ;
 int PHY_CFG_WR_MASK ;
 int PHY_CFG_WR_SHIFT ;
 int regmap_write (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static inline void phy_wr_cfg(struct rockchip_pcie_phy *rk_phy,
         u32 addr, u32 data)
{
 regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
       HIWORD_UPDATE(data,
       PHY_CFG_DATA_MASK,
       PHY_CFG_DATA_SHIFT) |
       HIWORD_UPDATE(addr,
       PHY_CFG_ADDR_MASK,
       PHY_CFG_ADDR_SHIFT));
 udelay(1);
 regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
       HIWORD_UPDATE(PHY_CFG_WR_ENABLE,
       PHY_CFG_WR_MASK,
       PHY_CFG_WR_SHIFT));
 udelay(1);
 regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
       HIWORD_UPDATE(PHY_CFG_WR_DISABLE,
       PHY_CFG_WR_MASK,
       PHY_CFG_WR_SHIFT));
}
