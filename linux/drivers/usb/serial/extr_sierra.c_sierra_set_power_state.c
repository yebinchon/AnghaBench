
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
typedef int __u16 ;


 int SWIMS_USB_REQUEST_SetPower ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int sierra_set_power_state(struct usb_device *udev, __u16 swiState)
{
 return usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
   SWIMS_USB_REQUEST_SetPower,
   USB_TYPE_VENDOR,
   swiState,
   0,
   ((void*)0),
   0,
   USB_CTRL_SET_TIMEOUT);
}
