
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int disc_mutex; TYPE_2__* type; int interface; } ;
struct tty_struct {int index; struct usb_serial_port* driver_data; } ;
struct tty_driver {int ** termios; } ;
struct TYPE_3__ {int owner; } ;
struct TYPE_4__ {TYPE_1__ driver; int (* init_termios ) (struct tty_struct*) ;} ;


 int ENODEV ;
 int module_put (int ) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*) ;
 int try_module_get (int ) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 struct usb_serial_port* usb_serial_port_get_by_minor (int) ;
 int usb_serial_put (struct usb_serial*) ;

__attribute__((used)) static int serial_install(struct tty_driver *driver, struct tty_struct *tty)
{
 int idx = tty->index;
 struct usb_serial *serial;
 struct usb_serial_port *port;
 bool init_termios;
 int retval = -ENODEV;

 port = usb_serial_port_get_by_minor(idx);
 if (!port)
  return retval;

 serial = port->serial;
 if (!try_module_get(serial->type->driver.owner))
  goto error_module_get;

 retval = usb_autopm_get_interface(serial->interface);
 if (retval)
  goto error_get_interface;

 init_termios = (driver->termios[idx] == ((void*)0));

 retval = tty_standard_install(driver, tty);
 if (retval)
  goto error_init_termios;

 mutex_unlock(&serial->disc_mutex);


 if (init_termios && serial->type->init_termios)
  serial->type->init_termios(tty);

 tty->driver_data = port;

 return retval;

 error_init_termios:
 usb_autopm_put_interface(serial->interface);
 error_get_interface:
 module_put(serial->type->driver.owner);
 error_module_get:
 usb_serial_put(serial);
 mutex_unlock(&serial->disc_mutex);
 return retval;
}
