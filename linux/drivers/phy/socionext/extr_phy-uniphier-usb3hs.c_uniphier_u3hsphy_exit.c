
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_u3hsphy_priv {int clk_parent; int rst_parent; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct uniphier_u3hsphy_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int uniphier_u3hsphy_exit(struct phy *phy)
{
 struct uniphier_u3hsphy_priv *priv = phy_get_drvdata(phy);

 reset_control_assert(priv->rst_parent);
 clk_disable_unprepare(priv->clk_parent);

 return 0;
}
