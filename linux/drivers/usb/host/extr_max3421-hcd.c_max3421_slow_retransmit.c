
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
struct max3421_hcd {struct urb* curr_urb; } ;
struct max3421_ep {int retransmit; } ;
struct TYPE_2__ {struct max3421_ep* hcpriv; } ;


 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;

__attribute__((used)) static void
max3421_slow_retransmit(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 struct urb *urb = max3421_hcd->curr_urb;
 struct max3421_ep *max3421_ep;

 max3421_ep = urb->ep->hcpriv;
 max3421_ep->retransmit = 1;
 max3421_hcd->curr_urb = ((void*)0);
}
