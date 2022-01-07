
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int dummy; } ;


 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_err (struct ohci_hcd*,char*) ;
 int ohci_run (struct ohci_hcd*) ;
 int ohci_stop (struct usb_hcd*) ;

__attribute__((used)) static int ohci_start(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);
 int ret;

 ret = ohci_run(ohci);
 if (ret < 0) {
  ohci_err(ohci, "can't start\n");
  ohci_stop(hcd);
 }
 return ret;
}
