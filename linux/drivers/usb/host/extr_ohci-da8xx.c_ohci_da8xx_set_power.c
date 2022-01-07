
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;
struct da8xx_ohci_hcd {int vbus_reg; } ;


 int dev_err (struct device*,char*,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;

__attribute__((used)) static int ohci_da8xx_set_power(struct usb_hcd *hcd, int on)
{
 struct da8xx_ohci_hcd *da8xx_ohci = to_da8xx_ohci(hcd);
 struct device *dev = hcd->self.controller;
 int ret;

 if (!da8xx_ohci->vbus_reg)
  return 0;

 if (on) {
  ret = regulator_enable(da8xx_ohci->vbus_reg);
  if (ret) {
   dev_err(dev, "Failed to enable regulator: %d\n", ret);
   return ret;
  }
 } else {
  ret = regulator_disable(da8xx_ohci->vbus_reg);
  if (ret) {
   dev_err(dev, "Failed  to disable regulator: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
