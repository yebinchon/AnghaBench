
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;


 int speedtch_usb_driver ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void speedtch_release_interfaces(struct usb_device *usb_dev,
     int num_interfaces)
{
 struct usb_interface *cur_intf;
 int i;

 for (i = 0; i < num_interfaces; i++) {
  cur_intf = usb_ifnum_to_if(usb_dev, i);
  if (cur_intf) {
   usb_set_intfdata(cur_intf, ((void*)0));
   usb_driver_release_interface(&speedtch_usb_driver, cur_intf);
  }
 }
}
