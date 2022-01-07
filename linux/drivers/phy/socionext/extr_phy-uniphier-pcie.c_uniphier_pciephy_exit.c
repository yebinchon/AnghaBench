
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pciephy_priv {int clk; int rst; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct uniphier_pciephy_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;
 int uniphier_pciephy_assert (struct uniphier_pciephy_priv*) ;

__attribute__((used)) static int uniphier_pciephy_exit(struct phy *phy)
{
 struct uniphier_pciephy_priv *priv = phy_get_drvdata(phy);

 uniphier_pciephy_assert(priv);
 reset_control_assert(priv->rst);
 clk_disable_unprepare(priv->clk);

 return 0;
}
