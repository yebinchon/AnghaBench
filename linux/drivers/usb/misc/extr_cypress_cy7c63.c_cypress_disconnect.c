
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct cypress {int udev; } ;


 int dev_info (int *,char*) ;
 int kfree (struct cypress*) ;
 struct cypress* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void cypress_disconnect(struct usb_interface *interface)
{
 struct cypress *dev;

 dev = usb_get_intfdata(interface);



 usb_set_intfdata(interface, ((void*)0));

 usb_put_dev(dev->udev);

 dev_info(&interface->dev,
   "Cypress CY7C63xxx device now disconnected\n");

 kfree(dev);
}
