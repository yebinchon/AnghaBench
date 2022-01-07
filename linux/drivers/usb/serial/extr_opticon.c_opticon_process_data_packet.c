
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port; } ;


 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void opticon_process_data_packet(struct usb_serial_port *port,
     const unsigned char *buf, size_t len)
{
 tty_insert_flip_string(&port->port, buf, len);
 tty_flip_buffer_push(&port->port);
}
