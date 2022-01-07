
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct edgeport_serial {int heartbeat_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct edgeport_serial*) ;
 struct edgeport_serial* usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static void edge_release(struct usb_serial *serial)
{
 struct edgeport_serial *edge_serial = usb_get_serial_data(serial);

 cancel_delayed_work_sync(&edge_serial->heartbeat_work);
 kfree(edge_serial);
}
