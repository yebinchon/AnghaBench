
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct garmin_data {int outsize; } ;


 int GPS_OUT_BUFSIZ ;
 struct garmin_data* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int garmin_write_room(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;



 struct garmin_data *garmin_data_p = usb_get_serial_port_data(port);
 return GPS_OUT_BUFSIZ-garmin_data_p->outsize;
}
