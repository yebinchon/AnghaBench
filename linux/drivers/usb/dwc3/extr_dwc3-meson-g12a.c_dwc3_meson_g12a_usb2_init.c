
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {scalar_t__ otg_mode; int regmap; int otg_phy_mode; int * phys; } ;


 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 scalar_t__ U2P_R0 ;
 int U2P_R0_DRV_VBUS ;
 int U2P_R0_ID_PULLUP ;
 int U2P_R0_POWER_ON_RESET ;
 int U2P_REG_SIZE ;
 int USB2_OTG_PHY ;
 int USB3_HOST_PHY ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 int dwc3_meson_g12a_usb2_set_mode (struct dwc3_meson_g12a*,int,int ) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
{
 int i;

 if (priv->otg_mode == USB_DR_MODE_PERIPHERAL)
  priv->otg_phy_mode = PHY_MODE_USB_DEVICE;
 else
  priv->otg_phy_mode = PHY_MODE_USB_HOST;

 for (i = 0 ; i < USB3_HOST_PHY ; ++i) {
  if (!priv->phys[i])
   continue;

  regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
       U2P_R0_POWER_ON_RESET,
       U2P_R0_POWER_ON_RESET);

  if (i == USB2_OTG_PHY) {
   regmap_update_bits(priv->regmap,
    U2P_R0 + (U2P_REG_SIZE * i),
    U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS,
    U2P_R0_ID_PULLUP | U2P_R0_DRV_VBUS);

   dwc3_meson_g12a_usb2_set_mode(priv, i,
            priv->otg_phy_mode);
  } else
   dwc3_meson_g12a_usb2_set_mode(priv, i,
            PHY_MODE_USB_HOST);

  regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
       U2P_R0_POWER_ON_RESET, 0);
 }

 return 0;
}
