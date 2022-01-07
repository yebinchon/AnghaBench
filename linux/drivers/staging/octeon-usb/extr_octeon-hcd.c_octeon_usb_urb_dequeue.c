
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct urb {int status; int hcpriv; TYPE_1__* ep; int dev; } ;
struct octeon_hcd {int lock; } ;
struct TYPE_2__ {int hcpriv; } ;


 int EINVAL ;
 int cvmx_usb_cancel (struct octeon_hcd*,int ,int ) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_hcd_check_unlink_urb (struct usb_hcd*,struct urb*,int) ;

__attribute__((used)) static int octeon_usb_urb_dequeue(struct usb_hcd *hcd,
      struct urb *urb,
      int status)
{
 struct octeon_hcd *usb = hcd_to_octeon(hcd);
 unsigned long flags;
 int rc;

 if (!urb->dev)
  return -EINVAL;

 spin_lock_irqsave(&usb->lock, flags);

 rc = usb_hcd_check_unlink_urb(hcd, urb, status);
 if (rc)
  goto out;

 urb->status = status;
 cvmx_usb_cancel(usb, urb->ep->hcpriv, urb->hcpriv);

out:
 spin_unlock_irqrestore(&usb->lock, flags);

 return rc;
}
