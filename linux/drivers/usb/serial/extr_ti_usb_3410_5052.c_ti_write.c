
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int write_fifo; } ;
struct tty_struct {int dummy; } ;
struct ti_port {int tp_lock; int tp_is_open; } ;


 int ENODEV ;
 int kfifo_in_locked (int *,unsigned char const*,int,int *) ;
 int ti_send (struct ti_port*) ;
 struct ti_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int ti_write(struct tty_struct *tty, struct usb_serial_port *port,
   const unsigned char *data, int count)
{
 struct ti_port *tport = usb_get_serial_port_data(port);

 if (count == 0) {
  return 0;
 }

 if (!tport->tp_is_open)
  return -ENODEV;

 count = kfifo_in_locked(&port->write_fifo, data, count,
       &tport->tp_lock);
 ti_send(tport);

 return count;
}
