
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct octeon_hcd {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int cvmx_usb_poll (struct octeon_hcd*) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t octeon_usb_irq(struct usb_hcd *hcd)
{
 struct octeon_hcd *usb = hcd_to_octeon(hcd);
 unsigned long flags;

 spin_lock_irqsave(&usb->lock, flags);
 cvmx_usb_poll(usb);
 spin_unlock_irqrestore(&usb->lock, flags);
 return IRQ_HANDLED;
}
