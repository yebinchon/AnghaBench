
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {scalar_t__ otg_phy_mode; int regmap; } ;


 scalar_t__ PHY_MODE_USB_DEVICE ;
 int USB_R0 ;
 int USB_R0_U2D_ACT ;
 int USB_R0_U2D_SS_SCALEDOWN_MODE_MASK ;
 int USB_R4 ;
 int USB_R4_P21_SLEEP_M0 ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void dwc3_meson_g12a_usb_otg_apply_mode(struct dwc3_meson_g12a *priv)
{
 if (priv->otg_phy_mode == PHY_MODE_USB_DEVICE) {
  regmap_update_bits(priv->regmap, USB_R0,
    USB_R0_U2D_ACT, USB_R0_U2D_ACT);
  regmap_update_bits(priv->regmap, USB_R0,
    USB_R0_U2D_SS_SCALEDOWN_MODE_MASK, 0);
  regmap_update_bits(priv->regmap, USB_R4,
    USB_R4_P21_SLEEP_M0, USB_R4_P21_SLEEP_M0);
 } else {
  regmap_update_bits(priv->regmap, USB_R0,
    USB_R0_U2D_ACT, 0);
  regmap_update_bits(priv->regmap, USB_R4,
    USB_R4_P21_SLEEP_M0, 0);
 }
}
