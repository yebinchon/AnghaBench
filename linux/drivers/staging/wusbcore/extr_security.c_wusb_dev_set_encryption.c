
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bEncryptionValue; int bEncryptionType; } ;
struct wusb_dev {TYPE_1__ ccm1_etd; } ;
struct device {int dummy; } ;
struct usb_device {struct wusb_dev* wusb_dev; struct device dev; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_SET_ENCRYPTION ;
 int USB_TYPE_STANDARD ;
 int dev_err (struct device*,char*,int ,int,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int wusb_et_name (int ) ;

__attribute__((used)) static int wusb_dev_set_encryption(struct usb_device *usb_dev, int value)
{
 int result;
 struct device *dev = &usb_dev->dev;
 struct wusb_dev *wusb_dev = usb_dev->wusb_dev;

 if (value) {
  value = wusb_dev->ccm1_etd.bEncryptionValue;
 } else {

  value = 0;
 }

 result = usb_control_msg(usb_dev, usb_sndctrlpipe(usb_dev, 0),
   USB_REQ_SET_ENCRYPTION,
   USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
   value, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 if (result < 0)
  dev_err(dev, "Can't set device's WUSB encryption to "
   "%s (value %d): %d\n",
   wusb_et_name(wusb_dev->ccm1_etd.bEncryptionType),
   wusb_dev->ccm1_etd.bEncryptionValue, result);
 return result;
}
