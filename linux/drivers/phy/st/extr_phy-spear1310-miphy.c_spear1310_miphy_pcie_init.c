
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear1310_miphy_priv {int id; int misc; } ;


 int EINVAL ;
 int SPEAR1310_PCIE_CFG_MASK (int) ;
 int SPEAR1310_PCIE_CFG_VAL (int) ;
 int SPEAR1310_PCIE_MIPHY_CFG_1 ;
 int SPEAR1310_PCIE_SATA_CFG ;
 int SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE ;
 int SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int spear1310_miphy_pcie_init(struct spear1310_miphy_priv *priv)
{
 u32 val;

 regmap_update_bits(priv->misc, SPEAR1310_PCIE_MIPHY_CFG_1,
      SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK,
      SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE);

 switch (priv->id) {
 case 0:
  val = SPEAR1310_PCIE_CFG_VAL(0);
  break;
 case 1:
  val = SPEAR1310_PCIE_CFG_VAL(1);
  break;
 case 2:
  val = SPEAR1310_PCIE_CFG_VAL(2);
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(priv->misc, SPEAR1310_PCIE_SATA_CFG,
      SPEAR1310_PCIE_CFG_MASK(priv->id), val);

 return 0;
}
