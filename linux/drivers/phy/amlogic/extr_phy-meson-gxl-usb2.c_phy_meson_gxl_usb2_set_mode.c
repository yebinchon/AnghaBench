
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb2_priv {int mode; int regmap; } ;
struct phy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int EINVAL ;



 int U2P_R0 ;
 int U2P_R0_DM_PULLDOWN ;
 int U2P_R0_DP_PULLDOWN ;
 int U2P_R0_ID_PULLUP ;
 struct phy_meson_gxl_usb2_priv* phy_get_drvdata (struct phy*) ;
 int phy_meson_gxl_usb2_reset (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int phy_meson_gxl_usb2_set_mode(struct phy *phy,
           enum phy_mode mode, int submode)
{
 struct phy_meson_gxl_usb2_priv *priv = phy_get_drvdata(phy);

 switch (mode) {
 case 129:
 case 128:
  regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_DM_PULLDOWN,
       U2P_R0_DM_PULLDOWN);
  regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_DP_PULLDOWN,
       U2P_R0_DP_PULLDOWN);
  regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_ID_PULLUP, 0);
  break;

 case 130:
  regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_DM_PULLDOWN,
       0);
  regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_DP_PULLDOWN,
       0);
  regmap_update_bits(priv->regmap, U2P_R0, U2P_R0_ID_PULLUP,
       U2P_R0_ID_PULLUP);
  break;

 default:
  return -EINVAL;
 }

 phy_meson_gxl_usb2_reset(phy);

 priv->mode = mode;

 return 0;
}
