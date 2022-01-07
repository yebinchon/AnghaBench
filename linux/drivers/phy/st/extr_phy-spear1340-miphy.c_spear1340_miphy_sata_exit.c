
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear1340_miphy_priv {int misc; } ;


 int SPEAR1340_PCIE_MIPHY_CFG ;
 int SPEAR1340_PCIE_MIPHY_CFG_MASK ;
 int SPEAR1340_PCIE_SATA_CFG ;
 int SPEAR1340_PCIE_SATA_CFG_MASK ;
 int SPEAR1340_PCM_CFG ;
 int SPEAR1340_PCM_CFG_SATA_POWER_EN ;
 int SPEAR1340_PERIP1_SW_RSATA ;
 int SPEAR1340_PERIP1_SW_RST ;
 int msleep (int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int spear1340_miphy_sata_exit(struct spear1340_miphy_priv *priv)
{
 regmap_update_bits(priv->misc, SPEAR1340_PCIE_SATA_CFG,
      SPEAR1340_PCIE_SATA_CFG_MASK, 0);
 regmap_update_bits(priv->misc, SPEAR1340_PCIE_MIPHY_CFG,
      SPEAR1340_PCIE_MIPHY_CFG_MASK, 0);


 regmap_update_bits(priv->misc, SPEAR1340_PERIP1_SW_RST,
      SPEAR1340_PERIP1_SW_RSATA,
      SPEAR1340_PERIP1_SW_RSATA);

 msleep(20);

 regmap_update_bits(priv->misc, SPEAR1340_PCM_CFG,
      SPEAR1340_PCM_CFG_SATA_POWER_EN, 0);

 msleep(20);

 return 0;
}
