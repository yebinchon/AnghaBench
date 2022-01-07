
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
struct TYPE_2__ {int desc; } ;


 int EINVAL ;
 int rh_call_control (struct usb_hcd*,struct urb*) ;
 int rh_queue_status (struct usb_hcd*,struct urb*) ;
 scalar_t__ usb_endpoint_xfer_control (int *) ;
 scalar_t__ usb_endpoint_xfer_int (int *) ;

__attribute__((used)) static int rh_urb_enqueue (struct usb_hcd *hcd, struct urb *urb)
{
 if (usb_endpoint_xfer_int(&urb->ep->desc))
  return rh_queue_status (hcd, urb);
 if (usb_endpoint_xfer_control(&urb->ep->desc))
  return rh_call_control (hcd, urb);
 return -EINVAL;
}
