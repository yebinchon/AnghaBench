
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {scalar_t__ bulk_out_size; scalar_t__ bulk_in_size; int port; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;


 int EIO ;
 int GFP_NOIO ;
 int tty_port_initialized (int *) ;
 int usb_serial_generic_submit_read_urbs (struct usb_serial_port*,int ) ;
 int usb_serial_generic_write_start (struct usb_serial_port*,int ) ;

int usb_serial_generic_resume(struct usb_serial *serial)
{
 struct usb_serial_port *port;
 int i, c = 0, r;

 for (i = 0; i < serial->num_ports; i++) {
  port = serial->port[i];
  if (!tty_port_initialized(&port->port))
   continue;

  if (port->bulk_in_size) {
   r = usb_serial_generic_submit_read_urbs(port,
        GFP_NOIO);
   if (r < 0)
    c++;
  }

  if (port->bulk_out_size) {
   r = usb_serial_generic_write_start(port, GFP_NOIO);
   if (r < 0)
    c++;
  }
 }

 return c ? -EIO : 0;
}
