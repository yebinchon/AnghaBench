
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_hcd {int lock; } ;


 int octeon_to_hcd (struct octeon_hcd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_hcd_poll_rh_status (int ) ;

__attribute__((used)) static void octeon_usb_port_callback(struct octeon_hcd *usb)
{
 spin_unlock(&usb->lock);
 usb_hcd_poll_rh_status(octeon_to_hcd(usb));
 spin_lock(&usb->lock);
}
