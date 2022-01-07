
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_u3hsphy_priv {int clk_ext; int clk; int rst; scalar_t__ vbus; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct uniphier_u3hsphy_priv* phy_get_drvdata (struct phy*) ;
 int regulator_disable (scalar_t__) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int uniphier_u3hsphy_power_off(struct phy *phy)
{
 struct uniphier_u3hsphy_priv *priv = phy_get_drvdata(phy);

 if (priv->vbus)
  regulator_disable(priv->vbus);

 reset_control_assert(priv->rst);
 clk_disable_unprepare(priv->clk);
 clk_disable_unprepare(priv->clk_ext);

 return 0;
}
