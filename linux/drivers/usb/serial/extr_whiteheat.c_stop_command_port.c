
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whiteheat_command_private {int mutex; int port_running; } ;
struct usb_serial_port {int read_urb; } ;
struct usb_serial {struct usb_serial_port** port; } ;


 size_t COMMAND_PORT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct whiteheat_command_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void stop_command_port(struct usb_serial *serial)
{
 struct usb_serial_port *command_port;
 struct whiteheat_command_private *command_info;

 command_port = serial->port[COMMAND_PORT];
 command_info = usb_get_serial_port_data(command_port);
 mutex_lock(&command_info->mutex);
 command_info->port_running--;
 if (!command_info->port_running)
  usb_kill_urb(command_port->read_urb);
 mutex_unlock(&command_info->mutex);
}
