
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_default {int def; int reg; } ;
struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int phy_regmap; } ;


 int ARRAY_SIZE (struct reg_default const*) ;




 int PCIE_PHY_TX1_MOD1 ;
 int PCIE_PHY_TX1_MOD2 ;
 int PCIE_PHY_TX1_MOD3 ;


 int PCIE_PHY_TX2_MOD1 ;
 int PCIE_PHY_TX2_MOD2 ;
 int PCIE_PHY_TX2_MOD3 ;
 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ltq_vrx200_pcie_phy_apply_workarounds(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);
 static const struct reg_default slices[] = {
  {
   .reg = 131,
   .def = 130,
  },
  {
   .reg = 129,
   .def = 128,
  },
  {
   .reg = 133,
   .def = 132,
  }
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(slices); i++) {

  regmap_update_bits(priv->phy_regmap, slices[i].reg,
       slices[i].def, slices[i].def);

  udelay(1);


  regmap_update_bits(priv->phy_regmap, slices[i].reg,
       slices[i].def, 0x0);
 }

 for (i = 0; i < 5; i++) {

  regmap_write(priv->phy_regmap, PCIE_PHY_TX2_MOD1, 0x1ffe);
  regmap_write(priv->phy_regmap, PCIE_PHY_TX2_MOD2, 0xfffe);
  regmap_write(priv->phy_regmap, PCIE_PHY_TX2_MOD3, 0x0601);
  usleep_range(1000, 2000);
  regmap_write(priv->phy_regmap, PCIE_PHY_TX2_MOD3, 0x0001);


  regmap_write(priv->phy_regmap, PCIE_PHY_TX1_MOD1, 0x1ffe);
  regmap_write(priv->phy_regmap, PCIE_PHY_TX1_MOD2, 0xfffe);
  regmap_write(priv->phy_regmap, PCIE_PHY_TX1_MOD3, 0x0601);
  usleep_range(1000, 2000);
  regmap_write(priv->phy_regmap, PCIE_PHY_TX1_MOD3, 0x0001);
 }
}
