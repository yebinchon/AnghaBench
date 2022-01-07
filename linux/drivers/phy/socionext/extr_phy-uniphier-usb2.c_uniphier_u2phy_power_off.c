
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_u2phy_priv {scalar_t__ vbus; } ;
struct phy {int dummy; } ;


 struct uniphier_u2phy_priv* phy_get_drvdata (struct phy*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int uniphier_u2phy_power_off(struct phy *phy)
{
 struct uniphier_u2phy_priv *priv = phy_get_drvdata(phy);

 if (priv->vbus)
  regulator_disable(priv->vbus);

 return 0;
}
