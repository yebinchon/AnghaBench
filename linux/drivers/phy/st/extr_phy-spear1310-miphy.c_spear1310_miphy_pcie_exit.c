
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear1310_miphy_priv {int misc; int id; } ;


 int SPEAR1310_PCIE_CFG_MASK (int ) ;
 int SPEAR1310_PCIE_MIPHY_CFG_1 ;
 int SPEAR1310_PCIE_SATA_CFG ;
 int SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int spear1310_miphy_pcie_exit(struct spear1310_miphy_priv *priv)
{
 regmap_update_bits(priv->misc, SPEAR1310_PCIE_SATA_CFG,
      SPEAR1310_PCIE_CFG_MASK(priv->id), 0);

 regmap_update_bits(priv->misc, SPEAR1310_PCIE_MIPHY_CFG_1,
      SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK, 0);

 return 0;
}
