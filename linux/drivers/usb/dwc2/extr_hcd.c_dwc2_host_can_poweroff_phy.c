
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct dwc2_hsotg {int dev; } ;
struct TYPE_3__ {struct usb_device* root_hub; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int device_may_wakeup (int ) ;
 TYPE_2__* dwc2_hsotg_to_hcd (struct dwc2_hsotg*) ;
 scalar_t__ usb_wakeup_enabled_descendants (struct usb_device*) ;

bool dwc2_host_can_poweroff_phy(struct dwc2_hsotg *dwc2)
{
 struct usb_device *root_hub = dwc2_hsotg_to_hcd(dwc2)->self.root_hub;


 if (!device_may_wakeup(dwc2->dev))
  return 1;





 if (usb_wakeup_enabled_descendants(root_hub))
  return 0;


 return 1;
}
