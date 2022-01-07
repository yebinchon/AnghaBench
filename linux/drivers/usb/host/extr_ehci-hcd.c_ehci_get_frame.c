
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ehci_hcd {int periodic_size; } ;


 int ehci_read_frame_index (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;

__attribute__((used)) static int ehci_get_frame (struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci (hcd);
 return (ehci_read_frame_index(ehci) >> 3) % ehci->periodic_size;
}
