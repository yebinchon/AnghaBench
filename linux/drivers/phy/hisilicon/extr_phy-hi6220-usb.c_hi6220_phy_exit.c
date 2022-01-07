
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct hi6220_priv {int dummy; } ;


 int hi6220_phy_setup (struct hi6220_priv*,int) ;
 struct hi6220_priv* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int hi6220_phy_exit(struct phy *phy)
{
 struct hi6220_priv *priv = phy_get_drvdata(phy);

 return hi6220_phy_setup(priv, 0);
}
