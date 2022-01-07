
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lego_usb_tower {int udev; struct lego_usb_tower* interrupt_out_buffer; struct lego_usb_tower* interrupt_in_buffer; struct lego_usb_tower* read_buffer; int interrupt_out_urb; int interrupt_in_urb; } ;


 int kfree (struct lego_usb_tower*) ;
 int usb_free_urb (int ) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static inline void tower_delete (struct lego_usb_tower *dev)
{

 usb_free_urb(dev->interrupt_in_urb);
 usb_free_urb(dev->interrupt_out_urb);
 kfree (dev->read_buffer);
 kfree (dev->interrupt_in_buffer);
 kfree (dev->interrupt_out_buffer);
 usb_put_dev(dev->udev);
 kfree (dev);
}
