
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct usb_serial {struct usb_serial_port** port; } ;


 size_t COMMAND_PORT ;
 int kfree (int ) ;
 int usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void whiteheat_release(struct usb_serial *serial)
{
 struct usb_serial_port *command_port;


 command_port = serial->port[COMMAND_PORT];
 kfree(usb_get_serial_port_data(command_port));
}
