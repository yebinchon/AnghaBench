
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {int otg_phy_mode; int regmap; int dev; } ;
typedef int irqreturn_t ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int IRQ_HANDLED ;
 int USB_R5 ;
 int USB_R5_ID_DIG_IRQ ;
 int dev_warn (int ,char*) ;
 int dwc3_meson_g12a_get_id (struct dwc3_meson_g12a*) ;
 scalar_t__ dwc3_meson_g12a_otg_mode_set (struct dwc3_meson_g12a*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t dwc3_meson_g12a_irq_thread(int irq, void *data)
{
 struct dwc3_meson_g12a *priv = data;
 enum phy_mode otg_id;

 otg_id = dwc3_meson_g12a_get_id(priv);
 if (otg_id != priv->otg_phy_mode) {
  if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
   dev_warn(priv->dev, "Failed to switch OTG mode\n");
 }

 regmap_update_bits(priv->regmap, USB_R5, USB_R5_ID_DIG_IRQ, 0);

 return IRQ_HANDLED;
}
