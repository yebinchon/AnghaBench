
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb2_priv {int clk; int reset; } ;
struct phy {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct phy_meson_gxl_usb2_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int phy_meson_gxl_usb2_init(struct phy *phy)
{
 struct phy_meson_gxl_usb2_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = reset_control_reset(priv->reset);
 if (ret)
  return ret;

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  return ret;

 return 0;
}
