
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct urb {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int (* map_urb_for_dma ) (struct usb_hcd*,struct urb*,int ) ;} ;


 int stub1 (struct usb_hcd*,struct urb*,int ) ;
 int usb_hcd_map_urb_for_dma (struct usb_hcd*,struct urb*,int ) ;

__attribute__((used)) static int map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
      gfp_t mem_flags)
{
 if (hcd->driver->map_urb_for_dma)
  return hcd->driver->map_urb_for_dma(hcd, urb, mem_flags);
 else
  return usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
}
