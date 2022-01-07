
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;


 int ENODEV ;
 struct usb_host_interface* uas_find_uas_alt_setting (struct usb_interface*) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;

__attribute__((used)) static int uas_switch_interface(struct usb_device *udev,
    struct usb_interface *intf)
{
 struct usb_host_interface *alt;

 alt = uas_find_uas_alt_setting(intf);
 if (!alt)
  return -ENODEV;

 return usb_set_interface(udev, alt->desc.bInterfaceNumber,
   alt->desc.bAlternateSetting);
}
