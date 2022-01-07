
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_meson_g12a {scalar_t__ otg_phy_mode; } ;
struct device {int dummy; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 scalar_t__ PHY_MODE_USB_HOST ;
 int USB_ROLE_DEVICE ;
 int USB_ROLE_HOST ;
 struct dwc3_meson_g12a* dev_get_drvdata (struct device*) ;

__attribute__((used)) static enum usb_role dwc3_meson_g12a_role_get(struct device *dev)
{
 struct dwc3_meson_g12a *priv = dev_get_drvdata(dev);

 return priv->otg_phy_mode == PHY_MODE_USB_HOST ?
  USB_ROLE_HOST : USB_ROLE_DEVICE;
}
