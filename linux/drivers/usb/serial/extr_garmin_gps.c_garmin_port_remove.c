
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;
struct garmin_data {int timer; int write_urbs; } ;


 int del_timer_sync (int *) ;
 int kfree (struct garmin_data*) ;
 struct garmin_data* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int garmin_port_remove(struct usb_serial_port *port)
{
 struct garmin_data *garmin_data_p = usb_get_serial_port_data(port);

 usb_kill_anchored_urbs(&garmin_data_p->write_urbs);
 usb_kill_urb(port->interrupt_in_urb);
 del_timer_sync(&garmin_data_p->timer);
 kfree(garmin_data_p);
 return 0;
}
