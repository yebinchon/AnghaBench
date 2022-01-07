
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dev; } ;
struct mixel_dphy_priv {int regmap; } ;


 int dev_err (int *,char*,unsigned int,int) ;
 struct mixel_dphy_priv* phy_get_drvdata (struct phy*) ;
 int regmap_write (int ,unsigned int,int ) ;

__attribute__((used)) static int phy_write(struct phy *phy, u32 value, unsigned int reg)
{
 struct mixel_dphy_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = regmap_write(priv->regmap, reg, value);
 if (ret < 0)
  dev_err(&phy->dev, "Failed to write DPHY reg %d: %d\n", reg,
   ret);
 return ret;
}
