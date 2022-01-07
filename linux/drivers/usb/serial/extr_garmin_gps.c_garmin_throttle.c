
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct garmin_data {int flags; int lock; } ;


 int FLAGS_QUEUING ;
 int FLAGS_THROTTLED ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct garmin_data* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void garmin_throttle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct garmin_data *garmin_data_p = usb_get_serial_port_data(port);



 spin_lock_irq(&garmin_data_p->lock);
 garmin_data_p->flags |= FLAGS_QUEUING|FLAGS_THROTTLED;
 spin_unlock_irq(&garmin_data_p->lock);
}
