
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ds_device {int udev; int ds_entry; } ;


 int ds_mutex ;
 int ds_w1_fini (struct ds_device*) ;
 int kfree (struct ds_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ds_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ds_disconnect(struct usb_interface *intf)
{
 struct ds_device *dev;

 dev = usb_get_intfdata(intf);
 if (!dev)
  return;

 mutex_lock(&ds_mutex);
 list_del(&dev->ds_entry);
 mutex_unlock(&ds_mutex);

 ds_w1_fini(dev);

 usb_set_intfdata(intf, ((void*)0));

 usb_put_dev(dev->udev);
 kfree(dev);
}
