
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;


 int dwc2_free_dma_aligned_buffer (struct urb*) ;
 int usb_hcd_unmap_urb_for_dma (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static void dwc2_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
{
 usb_hcd_unmap_urb_for_dma(hcd, urb);
 dwc2_free_dma_aligned_buffer(urb);
}
