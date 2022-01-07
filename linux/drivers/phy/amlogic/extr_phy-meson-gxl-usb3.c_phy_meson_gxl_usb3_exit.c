
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb3_priv {int clk_phy; int clk_peripheral; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct phy_meson_gxl_usb3_priv* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int phy_meson_gxl_usb3_exit(struct phy *phy)
{
 struct phy_meson_gxl_usb3_priv *priv = phy_get_drvdata(phy);

 clk_disable_unprepare(priv->clk_peripheral);
 clk_disable_unprepare(priv->clk_phy);

 return 0;
}
