
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_endpoint_descriptor {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
struct dummy_hcd {int stream_en_ep; } ;
struct TYPE_2__ {struct usb_endpoint_descriptor desc; } ;


 int dummy_get_ep_idx (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor const*) ;

__attribute__((used)) static int dummy_ep_stream_en(struct dummy_hcd *dum_hcd, struct urb *urb)
{
 const struct usb_endpoint_descriptor *desc = &urb->ep->desc;
 u32 index;

 if (!usb_endpoint_xfer_bulk(desc))
  return 0;

 index = dummy_get_ep_idx(desc);
 return (1 << index) & dum_hcd->stream_en_ep;
}
