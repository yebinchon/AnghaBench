
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int * usb3_generic_phy; int * usb2_generic_phy; int * usb3_phy; int * usb2_phy; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ENODEV ;
 int ENOSYS ;
 int ENXIO ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int USB_PHY_TYPE_USB2 ;
 int USB_PHY_TYPE_USB3 ;
 int dev_err (struct device*,char*) ;
 void* devm_phy_get (struct device*,char*) ;
 void* devm_usb_get_phy (struct device*,int ) ;
 void* devm_usb_get_phy_by_phandle (struct device*,char*,int) ;

__attribute__((used)) static int dwc3_core_get_phy(struct dwc3 *dwc)
{
 struct device *dev = dwc->dev;
 struct device_node *node = dev->of_node;
 int ret;

 if (node) {
  dwc->usb2_phy = devm_usb_get_phy_by_phandle(dev, "usb-phy", 0);
  dwc->usb3_phy = devm_usb_get_phy_by_phandle(dev, "usb-phy", 1);
 } else {
  dwc->usb2_phy = devm_usb_get_phy(dev, USB_PHY_TYPE_USB2);
  dwc->usb3_phy = devm_usb_get_phy(dev, USB_PHY_TYPE_USB3);
 }

 if (IS_ERR(dwc->usb2_phy)) {
  ret = PTR_ERR(dwc->usb2_phy);
  if (ret == -ENXIO || ret == -ENODEV) {
   dwc->usb2_phy = ((void*)0);
  } else if (ret == -EPROBE_DEFER) {
   return ret;
  } else {
   dev_err(dev, "no usb2 phy configured\n");
   return ret;
  }
 }

 if (IS_ERR(dwc->usb3_phy)) {
  ret = PTR_ERR(dwc->usb3_phy);
  if (ret == -ENXIO || ret == -ENODEV) {
   dwc->usb3_phy = ((void*)0);
  } else if (ret == -EPROBE_DEFER) {
   return ret;
  } else {
   dev_err(dev, "no usb3 phy configured\n");
   return ret;
  }
 }

 dwc->usb2_generic_phy = devm_phy_get(dev, "usb2-phy");
 if (IS_ERR(dwc->usb2_generic_phy)) {
  ret = PTR_ERR(dwc->usb2_generic_phy);
  if (ret == -ENOSYS || ret == -ENODEV) {
   dwc->usb2_generic_phy = ((void*)0);
  } else if (ret == -EPROBE_DEFER) {
   return ret;
  } else {
   dev_err(dev, "no usb2 phy configured\n");
   return ret;
  }
 }

 dwc->usb3_generic_phy = devm_phy_get(dev, "usb3-phy");
 if (IS_ERR(dwc->usb3_generic_phy)) {
  ret = PTR_ERR(dwc->usb3_generic_phy);
  if (ret == -ENOSYS || ret == -ENODEV) {
   dwc->usb3_generic_phy = ((void*)0);
  } else if (ret == -EPROBE_DEFER) {
   return ret;
  } else {
   dev_err(dev, "no usb3 phy configured\n");
   return ret;
  }
 }

 return 0;
}
