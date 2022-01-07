
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int QT_SET_GET_DEVICE ;
 int ssu100_control_msg (struct usb_device*,int ,int,int ) ;

__attribute__((used)) static inline int ssu100_setdevice(struct usb_device *dev, u8 *data)
{
 u16 x = ((u16)(data[1] << 8) | (u16)(data[0]));

 return ssu100_control_msg(dev, QT_SET_GET_DEVICE, x, 0);
}
