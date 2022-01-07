
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int EIO ;
 int QT2_USB_TIMEOUT ;
 int QT_SET_GET_REGISTER ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int qt2_getregister(struct usb_device *dev,
      u8 uart,
      u8 reg,
      u8 *data)
{
 int ret;

 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
         QT_SET_GET_REGISTER, 0xc0, reg,
         uart, data, sizeof(*data), QT2_USB_TIMEOUT);
 if (ret < (int)sizeof(*data)) {
  if (ret >= 0)
   ret = -EIO;
 }

 return ret;
}
