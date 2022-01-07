
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int usb_hcd_map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;
 scalar_t__ xhci_urb_suitable_for_idt (struct urb*) ;

__attribute__((used)) static int xhci_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
    gfp_t mem_flags)
{
 if (xhci_urb_suitable_for_idt(urb))
  return 0;

 return usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
}
