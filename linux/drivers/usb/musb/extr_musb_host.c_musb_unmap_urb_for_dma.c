
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct musb {scalar_t__ hwvers; } ;


 scalar_t__ MUSB_HWVERS_1800 ;
 struct musb* hcd_to_musb (struct usb_hcd*) ;
 int musb_free_temp_buffer (struct urb*) ;
 int usb_hcd_unmap_urb_for_dma (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static void musb_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
{
 struct musb *musb = hcd_to_musb(hcd);

 usb_hcd_unmap_urb_for_dma(hcd, urb);


 if (musb->hwvers < MUSB_HWVERS_1800)
  return;

 musb_free_temp_buffer(urb);
}
