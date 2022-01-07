
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int minor; int dev; } ;
struct ld_usb {int disconnected; int mutex; int write_wait; int read_wait; int open_count; int interrupt_out_urb; int interrupt_in_urb; } ;


 scalar_t__ USB_LD_MINOR_BASE ;
 int dev_info (int *,char*,scalar_t__) ;
 int ld_usb_class ;
 int ld_usb_delete (struct ld_usb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct ld_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_poison_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void ld_usb_disconnect(struct usb_interface *intf)
{
 struct ld_usb *dev;
 int minor;

 dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));

 minor = intf->minor;


 usb_deregister_dev(intf, &ld_usb_class);

 usb_poison_urb(dev->interrupt_in_urb);
 usb_poison_urb(dev->interrupt_out_urb);

 mutex_lock(&dev->mutex);


 if (!dev->open_count) {
  mutex_unlock(&dev->mutex);
  ld_usb_delete(dev);
 } else {
  dev->disconnected = 1;

  wake_up_interruptible_all(&dev->read_wait);
  wake_up_interruptible_all(&dev->write_wait);
  mutex_unlock(&dev->mutex);
 }

 dev_info(&intf->dev, "LD USB Device #%d now disconnected\n",
   (minor - USB_LD_MINOR_BASE));
}
