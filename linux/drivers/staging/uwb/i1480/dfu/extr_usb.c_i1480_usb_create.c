
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct i1480_usb {int * neep_urb; int usb_iface; int usb_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_put_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,struct i1480_usb*) ;

__attribute__((used)) static
int i1480_usb_create(struct i1480_usb *i1480_usb, struct usb_interface *iface)
{
 struct usb_device *usb_dev = interface_to_usbdev(iface);
 int result = -ENOMEM;

 i1480_usb->usb_dev = usb_get_dev(usb_dev);
 i1480_usb->usb_iface = usb_get_intf(iface);
 usb_set_intfdata(iface, i1480_usb);
 i1480_usb->neep_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (i1480_usb->neep_urb == ((void*)0))
  goto error;
 return 0;

error:
 usb_set_intfdata(iface, ((void*)0));
 usb_put_intf(iface);
 usb_put_dev(usb_dev);
 return result;
}
