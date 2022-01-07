
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int serial; } ;


 int firm_close (struct usb_serial_port*) ;
 int firm_report_tx_done (struct usb_serial_port*) ;
 int stop_command_port (int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void whiteheat_close(struct usb_serial_port *port)
{
 firm_report_tx_done(port);
 firm_close(port);

 usb_serial_generic_close(port);

 stop_command_port(port->serial);
}
