
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {int usb3_ports; int dev; int usb2_ports; int * phys; } ;


 scalar_t__ IS_ERR (int ) ;
 int PHY_COUNT ;
 int PTR_ERR (int ) ;
 int USB3_HOST_PHY ;
 int dev_info (int ,char*,int ) ;
 int devm_phy_optional_get (int ,int ) ;
 int * phy_names ;

__attribute__((used)) static int dwc3_meson_g12a_get_phys(struct dwc3_meson_g12a *priv)
{
 int i;

 for (i = 0 ; i < PHY_COUNT ; ++i) {
  priv->phys[i] = devm_phy_optional_get(priv->dev, phy_names[i]);
  if (!priv->phys[i])
   continue;

  if (IS_ERR(priv->phys[i]))
   return PTR_ERR(priv->phys[i]);

  if (i == USB3_HOST_PHY)
   priv->usb3_ports++;
  else
   priv->usb2_ports++;
 }

 dev_info(priv->dev, "USB2 ports: %d\n", priv->usb2_ports);
 dev_info(priv->dev, "USB3 ports: %d\n", priv->usb3_ports);

 return 0;
}
