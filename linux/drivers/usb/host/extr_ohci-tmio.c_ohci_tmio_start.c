
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_name; int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {int dummy; } ;


 int dev_err (int ,char*,int ) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_init (struct ohci_hcd*) ;
 int ohci_run (struct ohci_hcd*) ;
 int ohci_stop (struct usb_hcd*) ;

__attribute__((used)) static int ohci_tmio_start(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);
 int ret;

 if ((ret = ohci_init(ohci)) < 0)
  return ret;

 if ((ret = ohci_run(ohci)) < 0) {
  dev_err(hcd->self.controller, "can't start %s\n",
   hcd->self.bus_name);
  ohci_stop(hcd);
  return ret;
 }

 return 0;
}
