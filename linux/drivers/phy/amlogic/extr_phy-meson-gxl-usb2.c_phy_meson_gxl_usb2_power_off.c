
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb2_priv {int regmap; scalar_t__ is_enabled; } ;
struct phy {int dummy; } ;


 int U2P_R0 ;
 int U2P_R0_POWER_ON_RESET ;
 struct phy_meson_gxl_usb2_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int phy_meson_gxl_usb2_power_off(struct phy *phy)
{
 struct phy_meson_gxl_usb2_priv *priv = phy_get_drvdata(phy);

 priv->is_enabled = 0;


 regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_POWER_ON_RESET,
      U2P_R0_POWER_ON_RESET);

 return 0;
}
