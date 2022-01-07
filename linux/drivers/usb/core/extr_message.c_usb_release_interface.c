
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_cache {int ref; } ;
struct usb_interface {int altsetting; } ;
struct device {int of_node; } ;


 struct usb_interface_cache* altsetting_to_usb_interface_cache (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_interface*) ;
 int kref_put (int *,int ) ;
 int of_node_put (int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 int usb_put_dev (int ) ;
 int usb_release_interface_cache ;

__attribute__((used)) static void usb_release_interface(struct device *dev)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usb_interface_cache *intfc =
   altsetting_to_usb_interface_cache(intf->altsetting);

 kref_put(&intfc->ref, usb_release_interface_cache);
 usb_put_dev(interface_to_usbdev(intf));
 of_node_put(dev->of_node);
 kfree(intf);
}
