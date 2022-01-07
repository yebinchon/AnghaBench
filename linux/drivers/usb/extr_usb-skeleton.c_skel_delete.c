
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_skel {struct usb_skel* bulk_in_buffer; int udev; int interface; int bulk_in_urb; } ;
struct kref {int dummy; } ;


 int kfree (struct usb_skel*) ;
 struct usb_skel* to_skel_dev (struct kref*) ;
 int usb_free_urb (int ) ;
 int usb_put_dev (int ) ;
 int usb_put_intf (int ) ;

__attribute__((used)) static void skel_delete(struct kref *kref)
{
 struct usb_skel *dev = to_skel_dev(kref);

 usb_free_urb(dev->bulk_in_urb);
 usb_put_intf(dev->interface);
 usb_put_dev(dev->udev);
 kfree(dev->bulk_in_buffer);
 kfree(dev);
}
