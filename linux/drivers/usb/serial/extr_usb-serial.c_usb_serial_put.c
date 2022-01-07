
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int kref; } ;


 int destroy_serial ;
 int kref_put (int *,int ) ;

void usb_serial_put(struct usb_serial *serial)
{
 kref_put(&serial->kref, destroy_serial);
}
