
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_meson_g12a_usb2_priv {int reset; } ;
struct phy {int dummy; } ;


 struct phy_meson_g12a_usb2_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int phy_meson_g12a_usb2_exit(struct phy *phy)
{
 struct phy_meson_g12a_usb2_priv *priv = phy_get_drvdata(phy);

 return reset_control_reset(priv->reset);
}
