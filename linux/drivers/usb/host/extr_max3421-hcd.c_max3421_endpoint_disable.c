
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {struct max3421_ep* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct max3421_hcd {int lock; } ;
struct max3421_ep {int ep_list; } ;


 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int kfree (struct max3421_ep*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
max3421_endpoint_disable(struct usb_hcd *hcd, struct usb_host_endpoint *ep)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 unsigned long flags;

 spin_lock_irqsave(&max3421_hcd->lock, flags);

 if (ep->hcpriv) {
  struct max3421_ep *max3421_ep = ep->hcpriv;


  if (!list_empty(&max3421_ep->ep_list))
   list_del(&max3421_ep->ep_list);
  kfree(max3421_ep);
  ep->hcpriv = ((void*)0);
 }

 spin_unlock_irqrestore(&max3421_hcd->lock, flags);
}
