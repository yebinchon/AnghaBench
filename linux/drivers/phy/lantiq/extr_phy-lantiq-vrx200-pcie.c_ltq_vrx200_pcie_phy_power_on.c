
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int pdi_clk; int phy_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int ltq_vrx200_pcie_phy_apply_workarounds (struct phy*) ;
 int ltq_vrx200_pcie_phy_common_setup (struct phy*) ;
 scalar_t__ ltq_vrx200_pcie_phy_wait_for_pll (struct phy*) ;
 int pcie_phy_36mhz_mode_setup (struct phy*) ;
 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int ltq_vrx200_pcie_phy_power_on(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);
 int ret;


 ret = clk_prepare_enable(priv->pdi_clk);
 if (ret)
  goto err;


 ltq_vrx200_pcie_phy_common_setup(phy);

 pcie_phy_36mhz_mode_setup(phy);


 ret = clk_prepare_enable(priv->phy_clk);
 if (ret)
  goto err_disable_pdi_clk;


 if (ltq_vrx200_pcie_phy_wait_for_pll(phy) != 0)
  goto err_disable_phy_clk;

 ltq_vrx200_pcie_phy_apply_workarounds(phy);

 return 0;

err_disable_phy_clk:
 clk_disable_unprepare(priv->phy_clk);
err_disable_pdi_clk:
 clk_disable_unprepare(priv->pdi_clk);
err:
 return ret;
}
