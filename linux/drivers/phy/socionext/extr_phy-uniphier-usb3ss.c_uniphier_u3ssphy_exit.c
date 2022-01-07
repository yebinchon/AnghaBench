
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_u3ssphy_priv {int clk_parent; int clk_parent_gio; int rst_parent; int rst_parent_gio; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct uniphier_u3ssphy_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int uniphier_u3ssphy_exit(struct phy *phy)
{
 struct uniphier_u3ssphy_priv *priv = phy_get_drvdata(phy);

 reset_control_assert(priv->rst_parent_gio);
 reset_control_assert(priv->rst_parent);
 clk_disable_unprepare(priv->clk_parent_gio);
 clk_disable_unprepare(priv->clk_parent);

 return 0;
}
