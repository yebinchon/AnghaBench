
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct device {int dummy; } ;
struct da8xx_ohci_root_hub {scalar_t__ potpgt; } ;


 struct da8xx_ohci_root_hub* dev_get_platdata (struct device*) ;

__attribute__((used)) static int ohci_da8xx_has_potpgt(struct usb_hcd *hcd)
{
 struct device *dev = hcd->self.controller;
 struct da8xx_ohci_root_hub *hub = dev_get_platdata(dev);

 if (hub && hub->potpgt)
  return 1;

 return 0;
}
