
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miphy28lp_phy {scalar_t__ pipebase; int * syscfg_reg; int base; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int dev; int regmap; } ;


 int EINVAL ;
 int MIPHY_CTRL_DEFAULT ;
 int PCIE_CTRL_MASK ;
 int SATA_CTRL_MASK ;
 int SATA_CTRL_SELECT_PCIE ;
 size_t SYSCFG_PCI ;
 int SYSCFG_PCIE_PCIE_VAL ;
 size_t SYSCFG_SATA ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 int miphy28lp_configure_pcie (struct miphy28lp_phy*) ;
 int miphy28lp_setup (struct miphy28lp_phy*,int ) ;
 int miphy_is_ready (struct miphy28lp_phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static int miphy28lp_init_pcie(struct miphy28lp_phy *miphy_phy)
{
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 int err;

 if ((!miphy_phy->syscfg_reg[SYSCFG_SATA]) ||
   (!miphy_phy->syscfg_reg[SYSCFG_PCI])
  || (!miphy_phy->base) || (!miphy_phy->pipebase))
  return -EINVAL;

 dev_info(miphy_dev->dev, "pcie-up mode, addr 0x%p\n", miphy_phy->base);


 regmap_update_bits(miphy_dev->regmap,
      miphy_phy->syscfg_reg[SYSCFG_SATA],
      SATA_CTRL_MASK, SATA_CTRL_SELECT_PCIE);

 regmap_update_bits(miphy_dev->regmap, miphy_phy->syscfg_reg[SYSCFG_PCI],
      PCIE_CTRL_MASK, SYSCFG_PCIE_PCIE_VAL);


 err = miphy28lp_setup(miphy_phy, MIPHY_CTRL_DEFAULT);

 if (err) {
  dev_err(miphy_dev->dev, "PCIe phy setup failed\n");
  return err;
 }


 err = miphy28lp_configure_pcie(miphy_phy);
 if (err)
  return err;


 writeb_relaxed(0x68, miphy_phy->pipebase + 0x104);
 writeb_relaxed(0x61, miphy_phy->pipebase + 0x105);
 writeb_relaxed(0x68, miphy_phy->pipebase + 0x108);
 writeb_relaxed(0x61, miphy_phy->pipebase + 0x109);
 writeb_relaxed(0x68, miphy_phy->pipebase + 0x10c);
 writeb_relaxed(0x60, miphy_phy->pipebase + 0x10d);


 return miphy_is_ready(miphy_phy);
}
