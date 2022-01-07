
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_gxl_usb2_priv {int clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct phy_meson_gxl_usb2_priv* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int phy_meson_gxl_usb2_exit(struct phy *phy)
{
 struct phy_meson_gxl_usb2_priv *priv = phy_get_drvdata(phy);

 clk_disable_unprepare(priv->clk);

 return 0;
}
