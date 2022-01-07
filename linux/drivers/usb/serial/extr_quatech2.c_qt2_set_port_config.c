
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 int QT2_GET_SET_UART ;
 int QT2_USB_TIMEOUT ;
 int calc_baud_divisor (int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int qt2_set_port_config(struct usb_device *dev,
          unsigned char port_number,
          u16 baudrate, u16 lcr)
{
 int divisor = calc_baud_divisor(baudrate);
 u16 index = ((u16) (lcr << 8) | (u16) (port_number));

 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
          QT2_GET_SET_UART, 0x40,
          divisor, index, ((void*)0), 0, QT2_USB_TIMEOUT);
}
