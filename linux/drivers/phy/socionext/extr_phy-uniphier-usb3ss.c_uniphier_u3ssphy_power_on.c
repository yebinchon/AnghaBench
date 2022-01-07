
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_u3ssphy_priv {int clk_ext; int clk; int rst; scalar_t__ vbus; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct uniphier_u3ssphy_priv* phy_get_drvdata (struct phy*) ;
 int regulator_enable (scalar_t__) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int uniphier_u3ssphy_power_on(struct phy *phy)
{
 struct uniphier_u3ssphy_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = clk_prepare_enable(priv->clk_ext);
 if (ret)
  return ret;

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  goto out_clk_ext_disable;

 ret = reset_control_deassert(priv->rst);
 if (ret)
  goto out_clk_disable;

 if (priv->vbus) {
  ret = regulator_enable(priv->vbus);
  if (ret)
   goto out_rst_assert;
 }

 return 0;

out_rst_assert:
 reset_control_assert(priv->rst);
out_clk_disable:
 clk_disable_unprepare(priv->clk);
out_clk_ext_disable:
 clk_disable_unprepare(priv->clk_ext);

 return ret;
}
