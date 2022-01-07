
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb3_priv {int mode; int regmap; } ;
struct phy {int dev; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int EINVAL ;


 int USB_R0 ;
 int USB_R0_U2D_ACT ;
 int USB_R4 ;
 int USB_R4_P21_SLEEP_M0 ;
 int dev_err (int *,char*,int) ;
 struct phy_meson_gxl_usb3_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int phy_meson_gxl_usb3_set_mode(struct phy *phy,
           enum phy_mode mode, int submode)
{
 struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);

 switch (mode) {
 case 128:
  regmap_update_bits(priv->regmap, USB_R0, USB_R0_U2D_ACT, 0);
  regmap_update_bits(priv->regmap, USB_R4, USB_R4_P21_SLEEP_M0,
       0);
  break;

 case 129:
  regmap_update_bits(priv->regmap, USB_R0, USB_R0_U2D_ACT,
       USB_R0_U2D_ACT);
  regmap_update_bits(priv->regmap, USB_R4, USB_R4_P21_SLEEP_M0,
       USB_R4_P21_SLEEP_M0);
  break;

 default:
  dev_err(&phy->dev, "unsupported PHY mode %d\n", mode);
  return -EINVAL;
 }

 priv->mode = mode;

 return 0;
}
