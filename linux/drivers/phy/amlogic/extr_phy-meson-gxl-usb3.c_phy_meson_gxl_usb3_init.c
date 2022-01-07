
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb3_priv {int clk_phy; int clk_peripheral; int regmap; int mode; int reset; } ;
struct phy {int dummy; } ;


 int FIELD_PREP (int ,int) ;
 int USB_R1 ;
 int USB_R1_U3H_FLADJ_30MHZ_REG_MASK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct phy_meson_gxl_usb3_priv* phy_get_drvdata (struct phy*) ;
 int phy_meson_gxl_usb3_set_mode (struct phy*,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int phy_meson_gxl_usb3_init(struct phy *phy)
{
 struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = reset_control_reset(priv->reset);
 if (ret)
  goto err;

 ret = clk_prepare_enable(priv->clk_phy);
 if (ret)
  goto err;

 ret = clk_prepare_enable(priv->clk_peripheral);
 if (ret)
  goto err_disable_clk_phy;

 ret = phy_meson_gxl_usb3_set_mode(phy, priv->mode, 0);
 if (ret)
  goto err_disable_clk_peripheral;

 regmap_update_bits(priv->regmap, USB_R1,
      USB_R1_U3H_FLADJ_30MHZ_REG_MASK,
      FIELD_PREP(USB_R1_U3H_FLADJ_30MHZ_REG_MASK, 0x20));

 return 0;

err_disable_clk_peripheral:
 clk_disable_unprepare(priv->clk_peripheral);
err_disable_clk_phy:
 clk_disable_unprepare(priv->clk_phy);
err:
 return ret;
}
