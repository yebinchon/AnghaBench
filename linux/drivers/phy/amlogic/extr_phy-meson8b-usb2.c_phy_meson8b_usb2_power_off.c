
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson8b_usb2_priv {int clk_usb_general; int clk_usb; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct phy_meson8b_usb2_priv* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int phy_meson8b_usb2_power_off(struct phy *phy)
{
 struct phy_meson8b_usb2_priv *priv = phy_get_drvdata(phy);

 clk_disable_unprepare(priv->clk_usb);
 clk_disable_unprepare(priv->clk_usb_general);

 return 0;
}
