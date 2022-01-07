
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int setup_dma; } ;
typedef int gfp_t ;


 int DWC2_USB_DMA_ALIGN ;
 int WARN_ON_ONCE (int) ;
 int dwc2_alloc_dma_aligned_buffer (struct urb*,int ) ;
 int dwc2_free_dma_aligned_buffer (struct urb*) ;
 int usb_hcd_map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;

__attribute__((used)) static int dwc2_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
    gfp_t mem_flags)
{
 int ret;


 WARN_ON_ONCE(urb->setup_dma &&
       (urb->setup_dma & (DWC2_USB_DMA_ALIGN - 1)));

 ret = dwc2_alloc_dma_aligned_buffer(urb, mem_flags);
 if (ret)
  return ret;

 ret = usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
 if (ret)
  dwc2_free_dma_aligned_buffer(urb);

 return ret;
}
