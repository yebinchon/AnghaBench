
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port; } ;
struct urb {unsigned char* transfer_buffer; int actual_length; struct usb_serial_port* context; } ;


 unsigned char ir_baud ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,unsigned char*,int) ;

__attribute__((used)) static void ir_process_read_urb(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 unsigned char *data = urb->transfer_buffer;

 if (!urb->actual_length)
  return;





 if (*data & 0x0f)
  ir_baud = *data & 0x0f;

 if (urb->actual_length == 1)
  return;

 tty_insert_flip_string(&port->port, data + 1, urb->actual_length - 1);
 tty_flip_buffer_push(&port->port);
}
