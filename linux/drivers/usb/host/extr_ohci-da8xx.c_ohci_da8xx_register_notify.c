
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int notifier_call; } ;
struct da8xx_ohci_hcd {TYPE_2__ nb; scalar_t__ vbus_reg; int oc_gpio; } ;


 int dev_err (struct device*,char*,int) ;
 int devm_regulator_register_notifier (scalar_t__,TYPE_2__*) ;
 int ohci_da8xx_regulator_event ;
 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;

__attribute__((used)) static int ohci_da8xx_register_notify(struct usb_hcd *hcd)
{
 struct da8xx_ohci_hcd *da8xx_ohci = to_da8xx_ohci(hcd);
 struct device *dev = hcd->self.controller;
 int ret = 0;

 if (!da8xx_ohci->oc_gpio && da8xx_ohci->vbus_reg) {
  da8xx_ohci->nb.notifier_call = ohci_da8xx_regulator_event;
  ret = devm_regulator_register_notifier(da8xx_ohci->vbus_reg,
      &da8xx_ohci->nb);
 }

 if (ret)
  dev_err(dev, "Failed to register notifier: %d\n", ret);

 return ret;
}
