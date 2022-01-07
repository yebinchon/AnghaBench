
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int name; } ;
struct dummy_ep {scalar_t__ stream_en; int * desc; } ;
struct dummy {int lock; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ) ;
 int ep0name ;
 struct dummy* ep_to_dummy (struct dummy_ep*) ;
 int nuke (struct dummy*,struct dummy_ep*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udc_dev (struct dummy*) ;
 struct dummy_ep* usb_ep_to_dummy_ep (struct usb_ep*) ;

__attribute__((used)) static int dummy_disable(struct usb_ep *_ep)
{
 struct dummy_ep *ep;
 struct dummy *dum;
 unsigned long flags;

 ep = usb_ep_to_dummy_ep(_ep);
 if (!_ep || !ep->desc || _ep->name == ep0name)
  return -EINVAL;
 dum = ep_to_dummy(ep);

 spin_lock_irqsave(&dum->lock, flags);
 ep->desc = ((void*)0);
 ep->stream_en = 0;
 nuke(dum, ep);
 spin_unlock_irqrestore(&dum->lock, flags);

 dev_dbg(udc_dev(dum), "disabled %s\n", _ep->name);
 return 0;
}
