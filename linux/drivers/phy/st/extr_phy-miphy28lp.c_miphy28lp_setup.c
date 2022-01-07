
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct miphy28lp_phy {int miphy_rst; int * syscfg_reg; scalar_t__ osc_force_ext; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int dev; int regmap; } ;


 int EINVAL ;
 int MIPHY_CTRL_MASK ;
 int MIPHY_OSC_FORCE_EXT ;
 size_t SYSCFG_CTRL ;
 int dev_err (int ,char*) ;
 int miphy_osc_is_ready (struct miphy28lp_phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int miphy28lp_setup(struct miphy28lp_phy *miphy_phy, u32 miphy_val)
{
 int err;
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;

 if (!miphy_phy->syscfg_reg[SYSCFG_CTRL])
  return -EINVAL;

 err = reset_control_assert(miphy_phy->miphy_rst);
 if (err) {
  dev_err(miphy_dev->dev, "unable to bring out of miphy reset\n");
  return err;
 }

 if (miphy_phy->osc_force_ext)
  miphy_val |= MIPHY_OSC_FORCE_EXT;

 regmap_update_bits(miphy_dev->regmap,
      miphy_phy->syscfg_reg[SYSCFG_CTRL],
      MIPHY_CTRL_MASK, miphy_val);

 err = reset_control_deassert(miphy_phy->miphy_rst);
 if (err) {
  dev_err(miphy_dev->dev, "unable to bring out of miphy reset\n");
  return err;
 }

 return miphy_osc_is_ready(miphy_phy);
}
