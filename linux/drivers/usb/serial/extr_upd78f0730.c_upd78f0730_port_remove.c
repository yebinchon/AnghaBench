
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct upd78f0730_port_private {int lock; } ;


 int kfree (struct upd78f0730_port_private*) ;
 int mutex_destroy (int *) ;
 struct upd78f0730_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int upd78f0730_port_remove(struct usb_serial_port *port)
{
 struct upd78f0730_port_private *private;

 private = usb_get_serial_port_data(port);
 mutex_destroy(&private->lock);
 kfree(private);

 return 0;
}
