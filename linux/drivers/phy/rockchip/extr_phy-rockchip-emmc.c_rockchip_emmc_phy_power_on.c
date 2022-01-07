
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_emmc_phy {int drive_impedance; scalar_t__ reg_offset; int reg_base; } ;
struct phy {int dummy; } ;


 scalar_t__ GRF_EMMCPHY_CON0 ;
 scalar_t__ GRF_EMMCPHY_CON6 ;
 int HIWORD_UPDATE (int,int ,int ) ;
 int PHYCTRL_DR_MASK ;
 int PHYCTRL_DR_SHIFT ;
 int PHYCTRL_OTAPDLYENA ;
 int PHYCTRL_OTAPDLYENA_MASK ;
 int PHYCTRL_OTAPDLYENA_SHIFT ;
 int PHYCTRL_OTAPDLYSEL_MASK ;
 int PHYCTRL_OTAPDLYSEL_SHIFT ;
 int PHYCTRL_PDB_PWR_ON ;
 struct rockchip_emmc_phy* phy_get_drvdata (struct phy*) ;
 int regmap_write (int ,scalar_t__,int ) ;
 int rockchip_emmc_phy_power (struct phy*,int ) ;

__attribute__((used)) static int rockchip_emmc_phy_power_on(struct phy *phy)
{
 struct rockchip_emmc_phy *rk_phy = phy_get_drvdata(phy);


 regmap_write(rk_phy->reg_base,
       rk_phy->reg_offset + GRF_EMMCPHY_CON6,
       HIWORD_UPDATE(rk_phy->drive_impedance,
       PHYCTRL_DR_MASK,
       PHYCTRL_DR_SHIFT));


 regmap_write(rk_phy->reg_base,
       rk_phy->reg_offset + GRF_EMMCPHY_CON0,
       HIWORD_UPDATE(PHYCTRL_OTAPDLYENA,
       PHYCTRL_OTAPDLYENA_MASK,
       PHYCTRL_OTAPDLYENA_SHIFT));


 regmap_write(rk_phy->reg_base,
       rk_phy->reg_offset + GRF_EMMCPHY_CON0,
       HIWORD_UPDATE(4,
       PHYCTRL_OTAPDLYSEL_MASK,
       PHYCTRL_OTAPDLYSEL_SHIFT));


 return rockchip_emmc_phy_power(phy, PHYCTRL_PDB_PWR_ON);
}
