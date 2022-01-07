
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct ohci_hcd {int lock; } ;


 int _ohci_shutdown (struct usb_hcd*) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ohci_shutdown(struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci(hcd);
 unsigned long flags;

 spin_lock_irqsave(&ohci->lock, flags);
 _ohci_shutdown(hcd);
 spin_unlock_irqrestore(&ohci->lock, flags);
}
