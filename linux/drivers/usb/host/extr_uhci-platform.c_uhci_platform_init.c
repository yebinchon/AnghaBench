
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct uhci_hcd {int * global_suspend_mode_is_broken; int * resume_detect_interrupts_are_broken; int * configure_hc; int check_and_reset_hc; int reset_hc; scalar_t__ rh_numports; } ;


 int check_and_reset_hc (struct uhci_hcd*) ;
 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 scalar_t__ uhci_count_ports (struct usb_hcd*) ;
 int uhci_generic_check_and_reset_hc ;
 int uhci_generic_reset_hc ;

__attribute__((used)) static int uhci_platform_init(struct usb_hcd *hcd)
{
 struct uhci_hcd *uhci = hcd_to_uhci(hcd);


 if (!uhci->rh_numports)
  uhci->rh_numports = uhci_count_ports(hcd);


 uhci->reset_hc = uhci_generic_reset_hc;
 uhci->check_and_reset_hc = uhci_generic_check_and_reset_hc;


 uhci->configure_hc = ((void*)0);
 uhci->resume_detect_interrupts_are_broken = ((void*)0);
 uhci->global_suspend_mode_is_broken = ((void*)0);


 check_and_reset_hc(uhci);
 return 0;
}
