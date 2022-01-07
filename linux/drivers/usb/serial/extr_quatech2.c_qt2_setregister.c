
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int QT2_USB_TIMEOUT ;
 int QT_SET_GET_REGISTER ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int qt2_setregister(struct usb_device *dev,
      u8 uart, u8 reg, u16 data)
{
 u16 value = (data << 8) | reg;

 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
          QT_SET_GET_REGISTER, 0x40, value, uart,
          ((void*)0), 0, QT2_USB_TIMEOUT);
}
