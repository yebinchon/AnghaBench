
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct trancevibrator {int udev; } ;


 int kfree (struct trancevibrator*) ;
 struct trancevibrator* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void tv_disconnect(struct usb_interface *interface)
{
 struct trancevibrator *dev;

 dev = usb_get_intfdata (interface);
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(dev->udev);
 kfree(dev);
}
