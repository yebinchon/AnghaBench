
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {scalar_t__ connection_state; int lock; scalar_t__ start_to_connect; int role_sw_by_connector; } ;


 scalar_t__ USB_ROLE_NONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb3_connect (struct renesas_usb3*) ;
 int usb3_set_mode_by_role_sw (struct renesas_usb3*,int) ;
 int usb3_vbus_out (struct renesas_usb3*,int) ;

__attribute__((used)) static void usb3_mode_config(struct renesas_usb3 *usb3, bool host, bool a_dev)
{
 unsigned long flags;

 spin_lock_irqsave(&usb3->lock, flags);
 if (!usb3->role_sw_by_connector ||
     usb3->connection_state != USB_ROLE_NONE) {
  usb3_set_mode_by_role_sw(usb3, host);
  usb3_vbus_out(usb3, a_dev);
 }

 if ((!host && a_dev) || usb3->start_to_connect)
  usb3_connect(usb3);
 spin_unlock_irqrestore(&usb3->lock, flags);
}
