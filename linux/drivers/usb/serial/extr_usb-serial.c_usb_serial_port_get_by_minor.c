
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int kref; int disc_mutex; scalar_t__ disconnected; } ;


 struct usb_serial_port* idr_find (int *,unsigned int) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serial_minors ;
 int table_lock ;

struct usb_serial_port *usb_serial_port_get_by_minor(unsigned minor)
{
 struct usb_serial *serial;
 struct usb_serial_port *port;

 mutex_lock(&table_lock);
 port = idr_find(&serial_minors, minor);
 if (!port)
  goto exit;

 serial = port->serial;
 mutex_lock(&serial->disc_mutex);
 if (serial->disconnected) {
  mutex_unlock(&serial->disc_mutex);
  port = ((void*)0);
 } else {
  kref_get(&serial->kref);
 }
exit:
 mutex_unlock(&table_lock);
 return port;
}
