
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct lego_usb_tower {int minor; int disconnected; int lock; int write_wait; int read_wait; int open_count; int interrupt_out_urb; int interrupt_in_urb; } ;


 scalar_t__ LEGO_USB_TOWER_MINOR_BASE ;
 int dev_info (int *,char*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tower_class ;
 int tower_delete (struct lego_usb_tower*) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct lego_usb_tower* usb_get_intfdata (struct usb_interface*) ;
 int usb_poison_urb (int ) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void tower_disconnect (struct usb_interface *interface)
{
 struct lego_usb_tower *dev;
 int minor;

 dev = usb_get_intfdata (interface);

 minor = dev->minor;


 usb_deregister_dev (interface, &tower_class);


 usb_poison_urb(dev->interrupt_in_urb);
 usb_poison_urb(dev->interrupt_out_urb);

 mutex_lock(&dev->lock);


 if (!dev->open_count) {
  mutex_unlock(&dev->lock);
  tower_delete (dev);
 } else {
  dev->disconnected = 1;

  wake_up_interruptible_all(&dev->read_wait);
  wake_up_interruptible_all(&dev->write_wait);
  mutex_unlock(&dev->lock);
 }

 dev_info(&interface->dev, "LEGO USB Tower #%d now disconnected\n",
   (minor - LEGO_USB_TOWER_MINOR_BASE));
}
