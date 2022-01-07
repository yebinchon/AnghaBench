
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct mixel_dphy_priv {int phy_ref_clk; } ;


 int DPHY_PD_DPHY ;
 int DPHY_PD_PLL ;
 int PWR_OFF ;
 int clk_disable_unprepare (int ) ;
 struct mixel_dphy_priv* phy_get_drvdata (struct phy*) ;
 int phy_write (struct phy*,int ,int ) ;

__attribute__((used)) static int mixel_dphy_power_off(struct phy *phy)
{
 struct mixel_dphy_priv *priv = phy_get_drvdata(phy);

 phy_write(phy, PWR_OFF, DPHY_PD_PLL);
 phy_write(phy, PWR_OFF, DPHY_PD_DPHY);

 clk_disable_unprepare(priv->phy_ref_clk);

 return 0;
}
