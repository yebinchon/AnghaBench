
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int dev; int phy_regmap; } ;


 int PCIE_PHY_PLL_STATUS ;
 int dev_err (int ,char*,unsigned int) ;
 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;

__attribute__((used)) static int ltq_vrx200_pcie_phy_wait_for_pll(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);
 unsigned int tmp;
 int ret;

 ret = regmap_read_poll_timeout(priv->phy_regmap, PCIE_PHY_PLL_STATUS,
           tmp, ((tmp & 0x0070) == 0x0070), 10,
           10000);
 if (ret) {
  dev_err(priv->dev, "PLL Link timeout, PLL status = 0x%04x\n",
   tmp);
  return ret;
 }

 return 0;
}
