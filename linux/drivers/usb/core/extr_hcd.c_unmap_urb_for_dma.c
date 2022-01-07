
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {TYPE_1__* driver; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int (* unmap_urb_for_dma ) (struct usb_hcd*,struct urb*) ;} ;


 int stub1 (struct usb_hcd*,struct urb*) ;
 int usb_hcd_unmap_urb_for_dma (struct usb_hcd*,struct urb*) ;

__attribute__((used)) static void unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
{
 if (hcd->driver->unmap_urb_for_dma)
  hcd->driver->unmap_urb_for_dma(hcd, urb);
 else
  usb_hcd_unmap_urb_for_dma(hcd, urb);
}
