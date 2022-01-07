
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int alloc_dma_aligned_buffer (struct urb*,int ) ;
 int free_dma_aligned_buffer (struct urb*) ;
 int usb_hcd_map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;

__attribute__((used)) static int tegra_ehci_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
          gfp_t mem_flags)
{
 int ret;

 ret = alloc_dma_aligned_buffer(urb, mem_flags);
 if (ret)
  return ret;

 ret = usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
 if (ret)
  free_dma_aligned_buffer(urb);

 return ret;
}
