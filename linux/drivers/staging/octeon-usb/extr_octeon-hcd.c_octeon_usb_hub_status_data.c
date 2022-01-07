
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct octeon_hcd {int lock; } ;
struct cvmx_usb_port_status {int connect_change; } ;


 struct cvmx_usb_port_status cvmx_usb_get_status (struct octeon_hcd*) ;
 struct octeon_hcd* hcd_to_octeon (struct usb_hcd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int octeon_usb_hub_status_data(struct usb_hcd *hcd, char *buf)
{
 struct octeon_hcd *usb = hcd_to_octeon(hcd);
 struct cvmx_usb_port_status port_status;
 unsigned long flags;

 spin_lock_irqsave(&usb->lock, flags);
 port_status = cvmx_usb_get_status(usb);
 spin_unlock_irqrestore(&usb->lock, flags);
 buf[0] = port_status.connect_change << 1;

 return buf[0] != 0;
}
