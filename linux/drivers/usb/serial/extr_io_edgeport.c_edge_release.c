
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct edgeport_serial {struct edgeport_serial* bulk_in_buffer; int read_urb; struct edgeport_serial* interrupt_in_buffer; int interrupt_read_urb; scalar_t__ is_epic; } ;


 int kfree (struct edgeport_serial*) ;
 int usb_free_urb (int ) ;
 struct edgeport_serial* usb_get_serial_data (struct usb_serial*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void edge_release(struct usb_serial *serial)
{
 struct edgeport_serial *edge_serial = usb_get_serial_data(serial);

 if (edge_serial->is_epic) {
  usb_kill_urb(edge_serial->interrupt_read_urb);
  usb_free_urb(edge_serial->interrupt_read_urb);
  kfree(edge_serial->interrupt_in_buffer);

  usb_kill_urb(edge_serial->read_urb);
  usb_free_urb(edge_serial->read_urb);
  kfree(edge_serial->bulk_in_buffer);
 }

 kfree(edge_serial);
}
