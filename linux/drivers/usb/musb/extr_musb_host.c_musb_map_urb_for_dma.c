
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct musb {scalar_t__ hwvers; } ;
typedef int gfp_t ;


 scalar_t__ MUSB_HWVERS_1800 ;
 struct musb* hcd_to_musb (struct usb_hcd*) ;
 int musb_alloc_temp_buffer (struct urb*,int ) ;
 int musb_free_temp_buffer (struct urb*) ;
 int usb_hcd_map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;

__attribute__((used)) static int musb_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
          gfp_t mem_flags)
{
 struct musb *musb = hcd_to_musb(hcd);
 int ret;







 if (musb->hwvers < MUSB_HWVERS_1800)
  return usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);

 ret = musb_alloc_temp_buffer(urb, mem_flags);
 if (ret)
  return ret;

 ret = usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
 if (ret)
  musb_free_temp_buffer(urb);

 return ret;
}
