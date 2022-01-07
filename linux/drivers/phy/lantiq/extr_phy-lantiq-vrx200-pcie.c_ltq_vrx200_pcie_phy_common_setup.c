
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int phy_regmap; } ;


 int PCIE_PHY_PLL_A_CTRL1 ;
 int PCIE_PHY_PLL_A_CTRL2 ;
 int PCIE_PHY_PLL_A_CTRL3 ;
 int PCIE_PHY_RX1_A_CTRL ;
 int PCIE_PHY_RX1_CDR ;
 int PCIE_PHY_RX1_EI ;
 int PCIE_PHY_TX1_A_CTRL1 ;
 int PCIE_PHY_TX1_A_CTRL2 ;
 int PCIE_PHY_TX1_CTRL1 ;
 int PCIE_PHY_TX1_CTRL1_FORCE_EN ;
 int PCIE_PHY_TX1_CTRL2 ;
 int PCIE_PHY_TX1_CTRL3 ;
 int PCIE_PHY_TX2_A_CTRL2 ;
 int PCIE_PHY_TX2_CTRL2 ;
 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void ltq_vrx200_pcie_phy_common_setup(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);


 regmap_write(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL1, 0x120e);


 regmap_write(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL2, 0x39d7);
 regmap_write(priv->phy_regmap, PCIE_PHY_PLL_A_CTRL3, 0x0900);


 regmap_write(priv->phy_regmap, PCIE_PHY_RX1_EI, 0x0004);
 regmap_write(priv->phy_regmap, PCIE_PHY_RX1_A_CTRL, 0x6803);

 regmap_update_bits(priv->phy_regmap, PCIE_PHY_TX1_CTRL1,
      PCIE_PHY_TX1_CTRL1_FORCE_EN,
      PCIE_PHY_TX1_CTRL1_FORCE_EN);


 regmap_write(priv->phy_regmap, PCIE_PHY_TX1_A_CTRL2, 0x0706);


 regmap_write(priv->phy_regmap, PCIE_PHY_TX1_CTRL3, 0x1fff);


 regmap_write(priv->phy_regmap, PCIE_PHY_TX1_A_CTRL1, 0x0810);


 regmap_update_bits(priv->phy_regmap, PCIE_PHY_TX2_A_CTRL2, 0x7f00,
      0x4700);


 regmap_write(priv->phy_regmap, PCIE_PHY_TX1_CTRL2, 0x2e00);


 regmap_write(priv->phy_regmap, PCIE_PHY_TX2_CTRL2, 0x3096);
 regmap_write(priv->phy_regmap, PCIE_PHY_TX2_A_CTRL2, 0x4707);


 regmap_write(priv->phy_regmap, PCIE_PHY_RX1_CDR, 0x0235);
}
