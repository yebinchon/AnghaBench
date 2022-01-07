
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miphy28lp_phy {int sata_gen; int * syscfg_reg; int base; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int dev; int regmap; } ;


 int EINVAL ;
 int MIPHY_CTRL_DEFAULT ;
 int PCIE_CTRL_MASK ;
 int SATA_CTRL_MASK ;
 int SATA_CTRL_SELECT_PCIE ;
 int SATA_CTRL_SELECT_SATA ;
 int SATA_GEN1 ;
 int SATA_SPDMODE ;
 size_t SYSCFG_PCI ;
 size_t SYSCFG_SATA ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 int miphy28lp_configure_sata (struct miphy28lp_phy*) ;
 int miphy28lp_setup (struct miphy28lp_phy*,int ) ;
 int miphy_is_ready (struct miphy28lp_phy*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int miphy28lp_init_sata(struct miphy28lp_phy *miphy_phy)
{
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 int err, sata_conf = SATA_CTRL_SELECT_SATA;

 if ((!miphy_phy->syscfg_reg[SYSCFG_SATA]) ||
   (!miphy_phy->syscfg_reg[SYSCFG_PCI]) ||
   (!miphy_phy->base))
  return -EINVAL;

 dev_info(miphy_dev->dev, "sata-up mode, addr 0x%p\n", miphy_phy->base);


 sata_conf |= ((miphy_phy->sata_gen - SATA_GEN1) << SATA_SPDMODE);

 regmap_update_bits(miphy_dev->regmap,
      miphy_phy->syscfg_reg[SYSCFG_SATA],
      SATA_CTRL_MASK, sata_conf);

 regmap_update_bits(miphy_dev->regmap, miphy_phy->syscfg_reg[SYSCFG_PCI],
      PCIE_CTRL_MASK, SATA_CTRL_SELECT_PCIE);


 err = miphy28lp_setup(miphy_phy, MIPHY_CTRL_DEFAULT);

 if (err) {
  dev_err(miphy_dev->dev, "SATA phy setup failed\n");
  return err;
 }


 miphy28lp_configure_sata(miphy_phy);

 return miphy_is_ready(miphy_phy);
}
