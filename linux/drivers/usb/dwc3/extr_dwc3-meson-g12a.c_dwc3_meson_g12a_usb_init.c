
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {scalar_t__ usb3_ports; int regmap; } ;


 int FIELD_PREP (int ,int) ;
 int USB_R1 ;
 int USB_R1_U3H_FLADJ_30MHZ_REG_MASK ;
 int USB_R5 ;
 int USB_R5_ID_DIG_EN_0 ;
 int USB_R5_ID_DIG_EN_1 ;
 int USB_R5_ID_DIG_TH_MASK ;
 int dwc3_meson_g12a_usb2_init (struct dwc3_meson_g12a*) ;
 int dwc3_meson_g12a_usb3_init (struct dwc3_meson_g12a*) ;
 int dwc3_meson_g12a_usb_otg_apply_mode (struct dwc3_meson_g12a*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int dwc3_meson_g12a_usb_init(struct dwc3_meson_g12a *priv)
{
 int ret;

 ret = dwc3_meson_g12a_usb2_init(priv);
 if (ret)
  return ret;

 regmap_update_bits(priv->regmap, USB_R1,
   USB_R1_U3H_FLADJ_30MHZ_REG_MASK,
   FIELD_PREP(USB_R1_U3H_FLADJ_30MHZ_REG_MASK, 0x20));

 regmap_update_bits(priv->regmap, USB_R5,
   USB_R5_ID_DIG_EN_0,
   USB_R5_ID_DIG_EN_0);
 regmap_update_bits(priv->regmap, USB_R5,
   USB_R5_ID_DIG_EN_1,
   USB_R5_ID_DIG_EN_1);
 regmap_update_bits(priv->regmap, USB_R5,
   USB_R5_ID_DIG_TH_MASK,
   FIELD_PREP(USB_R5_ID_DIG_TH_MASK, 0xff));


 if (priv->usb3_ports)
  dwc3_meson_g12a_usb3_init(priv);

 dwc3_meson_g12a_usb_otg_apply_mode(priv);

 return 0;
}
