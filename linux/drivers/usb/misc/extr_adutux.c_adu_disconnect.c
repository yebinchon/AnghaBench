
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct adu_device {int disconnected; int open_count; int mtx; int interrupt_out_urb; int interrupt_in_urb; } ;


 int adu_class ;
 int adu_delete (struct adu_device*) ;
 int adutux_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct adu_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_poison_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void adu_disconnect(struct usb_interface *interface)
{
 struct adu_device *dev;

 dev = usb_get_intfdata(interface);

 usb_deregister_dev(interface, &adu_class);

 usb_poison_urb(dev->interrupt_in_urb);
 usb_poison_urb(dev->interrupt_out_urb);

 mutex_lock(&adutux_mutex);
 usb_set_intfdata(interface, ((void*)0));

 mutex_lock(&dev->mtx);
 dev->disconnected = 1;
 mutex_unlock(&dev->mtx);


 if (!dev->open_count)
  adu_delete(dev);

 mutex_unlock(&adutux_mutex);
}
