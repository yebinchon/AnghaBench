
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mvebu_comphy_priv {int cp_phys; } ;
struct mvebu_comphy_lane {int id; struct mvebu_comphy_priv* priv; } ;


 int COMPHY_SIP_POWER_OFF ;
 int mvebu_comphy_power_off_legacy (struct phy*) ;
 int mvebu_comphy_smc (int ,int ,int ,int ) ;
 struct mvebu_comphy_lane* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mvebu_comphy_power_off(struct phy *phy)
{
 struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 struct mvebu_comphy_priv *priv = lane->priv;
 int ret;

 ret = mvebu_comphy_smc(COMPHY_SIP_POWER_OFF, priv->cp_phys,
          lane->id, 0);
 if (!ret)
  return ret;


 return mvebu_comphy_power_off_legacy(phy);
}
