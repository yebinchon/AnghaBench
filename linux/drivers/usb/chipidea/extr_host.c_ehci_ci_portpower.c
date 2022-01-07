
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ehci_hcd {int hcs_params; scalar_t__ priv; } ;
struct ehci_ci_priv {scalar_t__ reg_vbus; } ;
struct device {int dummy; } ;
struct ci_hdrc {TYPE_2__* platdata; } ;
struct TYPE_4__ {scalar_t__ phy_mode; } ;


 int HCS_N_PORTS (int ) ;
 scalar_t__ USBPHY_INTERFACE_MODE_HSIC ;
 int dev_err (struct device*,char*,char*,int) ;
 struct ci_hdrc* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int hw_port_test_set (struct ci_hdrc*,int) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int ehci_ci_portpower(struct usb_hcd *hcd, int portnum, bool enable)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 struct ehci_ci_priv *priv = (struct ehci_ci_priv *)ehci->priv;
 struct device *dev = hcd->self.controller;
 struct ci_hdrc *ci = dev_get_drvdata(dev);
 int ret = 0;
 int port = HCS_N_PORTS(ehci->hcs_params);

 if (priv->reg_vbus) {
  if (port > 1) {
   dev_warn(dev,
    "Not support multi-port regulator control\n");
   return 0;
  }
  if (enable)
   ret = regulator_enable(priv->reg_vbus);
  else
   ret = regulator_disable(priv->reg_vbus);
  if (ret) {
   dev_err(dev,
    "Failed to %s vbus regulator, ret=%d\n",
    enable ? "enable" : "disable", ret);
   return ret;
  }
 }

 if (enable && (ci->platdata->phy_mode == USBPHY_INTERFACE_MODE_HSIC)) {




  hw_port_test_set(ci, 5);
  hw_port_test_set(ci, 0);
 }
 return 0;
}
