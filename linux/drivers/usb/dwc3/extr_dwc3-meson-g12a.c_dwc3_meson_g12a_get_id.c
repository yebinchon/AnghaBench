
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_meson_g12a {int regmap; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 int USB_R5 ;
 int USB_R5_ID_DIG_REG ;
 int USB_R5_ID_DIG_SYNC ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static enum phy_mode dwc3_meson_g12a_get_id(struct dwc3_meson_g12a *priv)
{
 u32 reg;

 regmap_read(priv->regmap, USB_R5, &reg);

 if (reg & (USB_R5_ID_DIG_SYNC | USB_R5_ID_DIG_REG))
  return PHY_MODE_USB_DEVICE;

 return PHY_MODE_USB_HOST;
}
