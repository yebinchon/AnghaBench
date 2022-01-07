
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dphy {int regs; } ;
struct phy {int dummy; } ;


 int SUN6I_DPHY_ANA1_REG ;
 int SUN6I_DPHY_ANA1_REG_VTTMODE ;
 struct sun6i_dphy* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sun6i_dphy_power_off(struct phy *phy)
{
 struct sun6i_dphy *dphy = phy_get_drvdata(phy);

 regmap_update_bits(dphy->regs, SUN6I_DPHY_ANA1_REG,
      SUN6I_DPHY_ANA1_REG_VTTMODE, 0);

 return 0;
}
