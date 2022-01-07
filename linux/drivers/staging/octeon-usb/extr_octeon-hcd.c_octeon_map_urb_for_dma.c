
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;


 int octeon_alloc_temp_buffer (struct urb*,int ) ;
 int octeon_free_temp_buffer (struct urb*) ;
 int usb_hcd_map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;

__attribute__((used)) static int octeon_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
      gfp_t mem_flags)
{
 int ret;

 ret = octeon_alloc_temp_buffer(urb, mem_flags);
 if (ret)
  return ret;

 ret = usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
 if (ret)
  octeon_free_temp_buffer(urb);

 return ret;
}
