
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {struct cvmx_usb_pipe* hcpriv; } ;
struct TYPE_2__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct octeon_hcd {int lock; } ;
struct device {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;


 int cvmx_usb_cancel_all (struct octeon_hcd*,struct cvmx_usb_pipe*) ;
 scalar_t__ cvmx_usb_close_pipe (struct octeon_hcd*,struct cvmx_usb_pipe*) ;
 int dev_dbg (struct device*,char*,struct cvmx_usb_pipe*) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_usb_endpoint_disable(struct usb_hcd *hcd,
     struct usb_host_endpoint *ep)
{
 struct device *dev = hcd->self.controller;

 if (ep->hcpriv) {
  struct octeon_hcd *usb = hcd_to_octeon(hcd);
  struct cvmx_usb_pipe *pipe = ep->hcpriv;
  unsigned long flags;

  spin_lock_irqsave(&usb->lock, flags);
  cvmx_usb_cancel_all(usb, pipe);
  if (cvmx_usb_close_pipe(usb, pipe))
   dev_dbg(dev, "Closing pipe %p failed\n", pipe);
  spin_unlock_irqrestore(&usb->lock, flags);
  ep->hcpriv = ((void*)0);
 }
}
