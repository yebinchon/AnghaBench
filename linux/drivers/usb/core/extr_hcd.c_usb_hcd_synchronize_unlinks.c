
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int hcd_urb_unlink_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void usb_hcd_synchronize_unlinks(struct usb_device *udev)
{
 spin_lock_irq(&hcd_urb_unlink_lock);
 spin_unlock_irq(&hcd_urb_unlink_lock);
}
