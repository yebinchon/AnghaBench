
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adu_device {int udev; struct adu_device* interrupt_out_buffer; struct adu_device* interrupt_in_buffer; struct adu_device* read_buffer_secondary; struct adu_device* read_buffer_primary; int interrupt_out_urb; int interrupt_in_urb; } ;


 int kfree (struct adu_device*) ;
 int usb_free_urb (int ) ;
 int usb_put_dev (int ) ;

__attribute__((used)) static void adu_delete(struct adu_device *dev)
{

 usb_free_urb(dev->interrupt_in_urb);
 usb_free_urb(dev->interrupt_out_urb);
 kfree(dev->read_buffer_primary);
 kfree(dev->read_buffer_secondary);
 kfree(dev->interrupt_in_buffer);
 kfree(dev->interrupt_out_buffer);
 usb_put_dev(dev->udev);
 kfree(dev);
}
