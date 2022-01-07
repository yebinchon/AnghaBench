
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct uhci_hcd {int big_endian_mmio; int big_endian_desc; int * global_suspend_mode_is_broken; int * resume_detect_interrupts_are_broken; int * configure_hc; int check_and_reset_hc; int reset_hc; int rh_numports; } ;


 int USBPORTSC1 ;
 int check_and_reset_hc (struct uhci_hcd*) ;
 struct uhci_hcd* hcd_to_uhci (struct usb_hcd*) ;
 int uhci_count_ports (struct usb_hcd*) ;
 int uhci_generic_check_and_reset_hc ;
 int uhci_generic_reset_hc ;
 int uhci_readw (struct uhci_hcd*,int ) ;

__attribute__((used)) static int uhci_grlib_init(struct usb_hcd *hcd)
{
 struct uhci_hcd *uhci = hcd_to_uhci(hcd);
 if (!(uhci_readw(uhci, USBPORTSC1) & 0x80)) {
  uhci->big_endian_mmio = 1;
  uhci->big_endian_desc = 1;
 }

 uhci->rh_numports = uhci_count_ports(hcd);


 uhci->reset_hc = uhci_generic_reset_hc;
 uhci->check_and_reset_hc = uhci_generic_check_and_reset_hc;

 uhci->configure_hc = ((void*)0);
 uhci->resume_detect_interrupts_are_broken = ((void*)0);
 uhci->global_suspend_mode_is_broken = ((void*)0);


 check_and_reset_hc(uhci);
 return 0;
}
