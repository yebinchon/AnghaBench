
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uniphier_u2phy_priv {TYPE_3__* data; int regmap; } ;
struct phy {int dummy; } ;
struct TYPE_4__ {int value; int offset; } ;
struct TYPE_5__ {int value; int offset; } ;
struct TYPE_6__ {TYPE_1__ config1; TYPE_2__ config0; } ;


 struct uniphier_u2phy_priv* phy_get_drvdata (struct phy*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int uniphier_u2phy_init(struct phy *phy)
{
 struct uniphier_u2phy_priv *priv = phy_get_drvdata(phy);

 if (!priv->data)
  return 0;

 regmap_write(priv->regmap, priv->data->config0.offset,
       priv->data->config0.value);
 regmap_write(priv->regmap, priv->data->config1.offset,
       priv->data->config1.value);

 return 0;
}
