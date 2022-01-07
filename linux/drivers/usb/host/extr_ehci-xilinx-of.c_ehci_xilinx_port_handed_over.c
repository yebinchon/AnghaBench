
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; scalar_t__ has_tt; } ;


 int dev_warn (int ,char*,...) ;

__attribute__((used)) static int ehci_xilinx_port_handed_over(struct usb_hcd *hcd, int portnum)
{
 dev_warn(hcd->self.controller, "port %d cannot be enabled\n", portnum);
 if (hcd->has_tt) {
  dev_warn(hcd->self.controller,
   "Maybe you have connected a low speed device?\n");

  dev_warn(hcd->self.controller,
   "We do not support low speed devices\n");
 } else {
  dev_warn(hcd->self.controller,
   "Maybe your device is not a high speed device?\n");
  dev_warn(hcd->self.controller,
   "The USB host controller does not support full speed "
   "nor low speed devices\n");
  dev_warn(hcd->self.controller,
   "You can reconfigure the host controller to have "
   "full speed support\n");
 }

 return 0;
}
