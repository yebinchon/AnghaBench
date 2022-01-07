
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dev; int * serial; } ;
struct usb_serial {int num_port_pointers; int dev; int interface; struct usb_serial_port** port; TYPE_1__* type; scalar_t__ attached; scalar_t__ minors_reserved; } ;
struct kref {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct usb_serial*) ;} ;


 int kfree (struct usb_serial*) ;
 int put_device (int *) ;
 int release_minors (struct usb_serial*) ;
 int stub1 (struct usb_serial*) ;
 struct usb_serial* to_usb_serial (struct kref*) ;
 int usb_put_dev (int ) ;
 int usb_put_intf (int ) ;

__attribute__((used)) static void destroy_serial(struct kref *kref)
{
 struct usb_serial *serial;
 struct usb_serial_port *port;
 int i;

 serial = to_usb_serial(kref);


 if (serial->minors_reserved)
  release_minors(serial);

 if (serial->attached && serial->type->release)
  serial->type->release(serial);


 for (i = 0; i < serial->num_port_pointers; ++i) {
  port = serial->port[i];
  if (port) {
   port->serial = ((void*)0);
   put_device(&port->dev);
  }
 }

 usb_put_intf(serial->interface);
 usb_put_dev(serial->dev);
 kfree(serial);
}
