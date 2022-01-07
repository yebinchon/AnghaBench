
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sevsegdev {int shadow_power; int textmode; int mode_msb; int mode_lsb; scalar_t__ has_interface_pm; struct usb_interface* intf; int udev; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct usb_sevsegdev* kzalloc (int,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_sevsegdev*) ;

__attribute__((used)) static int sevseg_probe(struct usb_interface *interface,
 const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_sevsegdev *mydev = ((void*)0);
 int rc = -ENOMEM;

 mydev = kzalloc(sizeof(struct usb_sevsegdev), GFP_KERNEL);
 if (!mydev)
  goto error_mem;

 mydev->udev = usb_get_dev(udev);
 mydev->intf = interface;
 usb_set_intfdata(interface, mydev);


 mydev->shadow_power = 1;
 mydev->has_interface_pm = 0;


 mydev->textmode = 0x02;
 mydev->mode_msb = 0x06;
 mydev->mode_lsb = 0x3f;

 dev_info(&interface->dev, "USB 7 Segment device now attached\n");
 return 0;

error_mem:
 return rc;
}
