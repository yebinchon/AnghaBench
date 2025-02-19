
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb3_priv {int regmap; } ;
struct phy {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int USB_R5 ;
 int USB_R5_ID_DIG_EN_0 ;
 int USB_R5_ID_DIG_EN_1 ;
 int USB_R5_ID_DIG_TH_MASK ;
 struct phy_meson_gxl_usb3_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int phy_meson_gxl_usb3_power_on(struct phy *phy)
{
 struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);

 regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_0,
      USB_R5_ID_DIG_EN_0);
 regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_EN_1,
      USB_R5_ID_DIG_EN_1);
 regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_TH_MASK,
      FIELD_PREP(USB_R5_ID_DIG_TH_MASK, 0xff));

 return 0;
}
