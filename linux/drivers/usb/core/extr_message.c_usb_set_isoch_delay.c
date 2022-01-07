
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bDeviceClass; } ;
struct usb_device {scalar_t__ speed; int hub_delay; TYPE_1__ descriptor; } ;


 scalar_t__ USB_CLASS_HUB ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_ISOCH_DELAY ;
 scalar_t__ USB_SPEED_SUPER ;
 int USB_TYPE_STANDARD ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int usb_set_isoch_delay(struct usb_device *dev)
{

 if (dev->descriptor.bDeviceClass == USB_CLASS_HUB)
  return 0;


 if (dev->speed < USB_SPEED_SUPER)
  return 0;

 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   USB_REQ_SET_ISOCH_DELAY,
   USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
   dev->hub_delay, 0, ((void*)0), 0,
   USB_CTRL_SET_TIMEOUT);
}
