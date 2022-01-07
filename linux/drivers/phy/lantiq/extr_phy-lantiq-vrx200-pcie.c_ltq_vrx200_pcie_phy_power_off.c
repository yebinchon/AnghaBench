
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int pdi_clk; int phy_clk; } ;


 int clk_disable_unprepare (int ) ;
 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int ltq_vrx200_pcie_phy_power_off(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);

 clk_disable_unprepare(priv->phy_clk);
 clk_disable_unprepare(priv->pdi_clk);

 return 0;
}
