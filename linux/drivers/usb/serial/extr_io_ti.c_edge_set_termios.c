
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {int dummy; } ;
struct ktermios {int dummy; } ;
struct edgeport_port {int dummy; } ;


 int change_port_settings (struct tty_struct*,struct edgeport_port*,struct ktermios*) ;
 struct edgeport_port* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void edge_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct edgeport_port *edge_port = usb_get_serial_port_data(port);

 if (edge_port == ((void*)0))
  return;

 change_port_settings(tty, edge_port, old_termios);
}
