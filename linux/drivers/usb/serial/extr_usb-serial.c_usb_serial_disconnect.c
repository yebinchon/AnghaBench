
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int delta_msr_wait; } ;
struct usb_serial_port {int dev; int work; TYPE_2__ port; } ;
struct usb_serial {int disconnected; int num_ports; TYPE_1__* type; struct usb_serial_port** port; int disc_mutex; } ;
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct tty_struct {int dummy; } ;
struct TYPE_3__ {int (* disconnect ) (struct usb_serial*) ;} ;


 int cancel_work_sync (int *) ;
 int dev_info (struct device*,char*) ;
 int device_del (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct usb_serial*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (TYPE_2__*) ;
 int tty_vhangup (struct tty_struct*) ;
 struct usb_serial* usb_get_intfdata (struct usb_interface*) ;
 int usb_serial_console_disconnect (struct usb_serial*) ;
 int usb_serial_port_poison_urbs (struct usb_serial_port*) ;
 int usb_serial_put (struct usb_serial*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void usb_serial_disconnect(struct usb_interface *interface)
{
 int i;
 struct usb_serial *serial = usb_get_intfdata(interface);
 struct device *dev = &interface->dev;
 struct usb_serial_port *port;
 struct tty_struct *tty;

 usb_serial_console_disconnect(serial);

 mutex_lock(&serial->disc_mutex);

 serial->disconnected = 1;
 mutex_unlock(&serial->disc_mutex);

 for (i = 0; i < serial->num_ports; ++i) {
  port = serial->port[i];
  tty = tty_port_tty_get(&port->port);
  if (tty) {
   tty_vhangup(tty);
   tty_kref_put(tty);
  }
  usb_serial_port_poison_urbs(port);
  wake_up_interruptible(&port->port.delta_msr_wait);
  cancel_work_sync(&port->work);
  if (device_is_registered(&port->dev))
   device_del(&port->dev);
 }
 if (serial->type->disconnect)
  serial->type->disconnect(serial);


 usb_serial_put(serial);
 dev_info(dev, "device disconnected\n");
}
