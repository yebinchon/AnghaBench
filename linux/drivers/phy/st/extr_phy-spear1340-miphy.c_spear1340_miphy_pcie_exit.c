
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear1340_miphy_priv {int misc; } ;


 int SPEAR1340_PCIE_MIPHY_CFG ;
 int SPEAR1340_PCIE_MIPHY_CFG_MASK ;
 int SPEAR1340_PCIE_SATA_CFG ;
 int SPEAR1340_PCIE_SATA_CFG_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int spear1340_miphy_pcie_exit(struct spear1340_miphy_priv *priv)
{
 regmap_update_bits(priv->misc, SPEAR1340_PCIE_MIPHY_CFG,
      SPEAR1340_PCIE_MIPHY_CFG_MASK, 0);
 regmap_update_bits(priv->misc, SPEAR1340_PCIE_SATA_CFG,
      SPEAR1340_PCIE_SATA_CFG_MASK, 0);

 return 0;
}
