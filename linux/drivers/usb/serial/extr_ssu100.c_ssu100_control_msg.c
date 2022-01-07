
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int ssu100_control_msg(struct usb_device *dev,
         u8 request, u16 data, u16 index)
{
 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
          request, 0x40, data, index,
          ((void*)0), 0, 300);
}
