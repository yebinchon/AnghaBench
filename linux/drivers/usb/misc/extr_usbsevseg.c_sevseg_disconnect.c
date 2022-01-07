
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {int udev; } ;
struct usb_interface {int dev; } ;


 int dev_info (int *,char*) ;
 int kfree (struct usb_sevsegdev*) ;
 struct usb_sevsegdev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void sevseg_disconnect(struct usb_interface *interface)
{
 struct usb_sevsegdev *mydev;

 mydev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(mydev->udev);
 kfree(mydev);
 dev_info(&interface->dev, "USB 7 Segment now disconnected\n");
}
