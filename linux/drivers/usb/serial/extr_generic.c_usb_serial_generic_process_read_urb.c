
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int console; } ;
struct usb_serial_port {TYPE_1__ port; int sysrq; } ;
struct urb {int actual_length; scalar_t__ transfer_buffer; struct usb_serial_port* context; } ;


 int TTY_NORMAL ;
 int tty_flip_buffer_push (TYPE_1__*) ;
 int tty_insert_flip_char (TYPE_1__*,char,int ) ;
 int tty_insert_flip_string (TYPE_1__*,char*,int) ;
 int usb_serial_handle_sysrq_char (struct usb_serial_port*,char) ;

void usb_serial_generic_process_read_urb(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 char *ch = (char *)urb->transfer_buffer;
 int i;

 if (!urb->actual_length)
  return;





 if (!port->port.console || !port->sysrq) {
  tty_insert_flip_string(&port->port, ch, urb->actual_length);
 } else {
  for (i = 0; i < urb->actual_length; i++, ch++) {
   if (!usb_serial_handle_sysrq_char(port, *ch))
    tty_insert_flip_char(&port->port, *ch, TTY_NORMAL);
  }
 }
 tty_flip_buffer_push(&port->port);
}
