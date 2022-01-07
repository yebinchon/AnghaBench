
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int console; } ;
struct usb_serial_port {TYPE_1__ port; int sysrq; } ;


 int TTY_NORMAL ;
 int tty_flip_buffer_push (TYPE_1__*) ;
 int tty_insert_flip_char (TYPE_1__*,char,int ) ;
 int tty_insert_flip_string (TYPE_1__*,char*,int) ;
 int usb_serial_handle_sysrq_char (struct usb_serial_port*,char) ;

__attribute__((used)) static void mxuport_process_read_urb_data(struct usb_serial_port *port,
       char *data, int size)
{
 int i;

 if (!port->port.console || !port->sysrq) {
  tty_insert_flip_string(&port->port, data, size);
 } else {
  for (i = 0; i < size; i++, data++) {
   if (!usb_serial_handle_sysrq_char(port, *data))
    tty_insert_flip_char(&port->port, *data,
           TTY_NORMAL);
  }
 }
 tty_flip_buffer_push(&port->port);
}
