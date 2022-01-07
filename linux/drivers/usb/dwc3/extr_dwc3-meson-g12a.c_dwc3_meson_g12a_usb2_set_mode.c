
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {int regmap; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int PHY_MODE_USB_HOST ;
 scalar_t__ U2P_R0 ;
 int U2P_R0_HOST_DEVICE ;
 int U2P_REG_SIZE ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void dwc3_meson_g12a_usb2_set_mode(struct dwc3_meson_g12a *priv,
       int i, enum phy_mode mode)
{
 if (mode == PHY_MODE_USB_HOST)
  regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
    U2P_R0_HOST_DEVICE,
    U2P_R0_HOST_DEVICE);
 else
  regmap_update_bits(priv->regmap, U2P_R0 + (U2P_REG_SIZE * i),
    U2P_R0_HOST_DEVICE, 0);
}
