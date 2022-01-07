
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;
struct ehci_hcd {int lock; } ;


 int drop_tt (struct usb_device*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ehci_remove_device(struct usb_hcd *hcd, struct usb_device *udev)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);

 spin_lock_irq(&ehci->lock);
 drop_tt(udev);
 spin_unlock_irq(&ehci->lock);
}
