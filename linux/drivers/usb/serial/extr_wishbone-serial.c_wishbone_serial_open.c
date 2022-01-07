
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* serial; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int usb_gsi_openclose (struct usb_serial_port*,int) ;
 int usb_serial_generic_open (struct tty_struct*,struct usb_serial_port*) ;

__attribute__((used)) static int wishbone_serial_open(struct tty_struct *tty,
    struct usb_serial_port *port)
{
 int retval;

 retval = usb_gsi_openclose(port, 1);
 if (retval) {
  dev_err(&port->serial->dev->dev,
         "Could not mark device as open (%d)\n",
         retval);
  return retval;
 }

 retval = usb_serial_generic_open(tty, port);
 if (retval)
  usb_gsi_openclose(port, 0);

 return retval;
}
