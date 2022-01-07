
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int dummy; } ;
struct wusb_dev {int addr; struct usb_device* usb_dev; } ;
struct device {int dummy; } ;
struct usb_device {int authenticated; struct device dev; } ;


 int ENOMEM ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_ADDRESS ;
 int USB_STATE_ADDRESS ;
 int USB_STATE_DEFAULT ;
 int USB_TYPE_STANDARD ;
 int dev_err (struct device*,char*,int,...) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,int *,int ,int ) ;
 int usb_ep0_reinit (struct usb_device*) ;
 int usb_set_device_state (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int wusb_set_dev_addr (struct wusbhc*,struct wusb_dev*,int) ;

int wusb_dev_update_address(struct wusbhc *wusbhc, struct wusb_dev *wusb_dev)
{
 int result = -ENOMEM;
 struct usb_device *usb_dev = wusb_dev->usb_dev;
 struct device *dev = &usb_dev->dev;
 u8 new_address = wusb_dev->addr & 0x7F;


 result = usb_control_msg(usb_dev, usb_sndctrlpipe(usb_dev, 0),
   USB_REQ_SET_ADDRESS,
   USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
    0, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 if (result < 0) {
  dev_err(dev, "auth failed: can't set address 0: %d\n",
   result);
  goto error_addr0;
 }
 result = wusb_set_dev_addr(wusbhc, wusb_dev, 0);
 if (result < 0)
  goto error_addr0;
 usb_set_device_state(usb_dev, USB_STATE_DEFAULT);
 usb_ep0_reinit(usb_dev);


 result = usb_control_msg(usb_dev, usb_sndctrlpipe(usb_dev, 0),
   USB_REQ_SET_ADDRESS,
   USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
   new_address, 0, ((void*)0), 0,
   USB_CTRL_SET_TIMEOUT);
 if (result < 0) {
  dev_err(dev, "auth failed: can't set address %u: %d\n",
   new_address, result);
  goto error_addr;
 }
 result = wusb_set_dev_addr(wusbhc, wusb_dev, new_address);
 if (result < 0)
  goto error_addr;
 usb_set_device_state(usb_dev, USB_STATE_ADDRESS);
 usb_ep0_reinit(usb_dev);
 usb_dev->authenticated = 1;
error_addr:
error_addr0:
 return result;
}
