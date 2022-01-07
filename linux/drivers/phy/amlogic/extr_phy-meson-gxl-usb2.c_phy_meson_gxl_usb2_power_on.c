
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb2_priv {int is_enabled; int mode; int regmap; } ;
struct phy {int dev; } ;


 int U2P_R0 ;
 int U2P_R0_POWER_ON_RESET ;
 int dev_err (int *,char*,int ) ;
 struct phy_meson_gxl_usb2_priv* phy_get_drvdata (struct phy*) ;
 int phy_meson_gxl_usb2_power_off (struct phy*) ;
 int phy_meson_gxl_usb2_set_mode (struct phy*,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int phy_meson_gxl_usb2_power_on(struct phy *phy)
{
 struct phy_meson_gxl_usb2_priv *priv = phy_get_drvdata(phy);
 int ret;

 priv->is_enabled = 1;


 regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_POWER_ON_RESET, 0);

 ret = phy_meson_gxl_usb2_set_mode(phy, priv->mode, 0);
 if (ret) {
  phy_meson_gxl_usb2_power_off(phy);

  dev_err(&phy->dev, "Failed to initialize PHY with mode %d\n",
   priv->mode);
  return ret;
 }

 return 0;
}
