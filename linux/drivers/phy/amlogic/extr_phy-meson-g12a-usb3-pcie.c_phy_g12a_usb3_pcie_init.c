
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_g12a_usb3_pcie_priv {scalar_t__ mode; int regmap; int reset; } ;
struct phy {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int PHY_R0 ;
 int PHY_R0_PCIE_POWER_STATE ;
 scalar_t__ PHY_TYPE_USB3 ;
 int phy_g12a_usb3_init (struct phy*) ;
 struct phy_g12a_usb3_pcie_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int phy_g12a_usb3_pcie_init(struct phy *phy)
{
 struct phy_g12a_usb3_pcie_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = reset_control_reset(priv->reset);
 if (ret)
  return ret;

 if (priv->mode == PHY_TYPE_USB3)
  return phy_g12a_usb3_init(phy);



 regmap_update_bits(priv->regmap, PHY_R0,
      PHY_R0_PCIE_POWER_STATE,
      FIELD_PREP(PHY_R0_PCIE_POWER_STATE, 0x1c));

 return 0;
}
