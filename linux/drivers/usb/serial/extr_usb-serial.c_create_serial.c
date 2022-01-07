
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {int dummy; } ;
struct usb_serial {scalar_t__ minors_reserved; int disc_mutex; int kref; int interface; struct usb_serial_driver* type; int dev; } ;
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct usb_serial* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_get_intf (struct usb_interface*) ;

__attribute__((used)) static struct usb_serial *create_serial(struct usb_device *dev,
     struct usb_interface *interface,
     struct usb_serial_driver *driver)
{
 struct usb_serial *serial;

 serial = kzalloc(sizeof(*serial), GFP_KERNEL);
 if (!serial)
  return ((void*)0);
 serial->dev = usb_get_dev(dev);
 serial->type = driver;
 serial->interface = usb_get_intf(interface);
 kref_init(&serial->kref);
 mutex_init(&serial->disc_mutex);
 serial->minors_reserved = 0;

 return serial;
}
