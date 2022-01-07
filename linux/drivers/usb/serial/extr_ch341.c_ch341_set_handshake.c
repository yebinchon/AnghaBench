
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int CH341_REQ_MODEM_CTRL ;
 int ch341_control_out (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static int ch341_set_handshake(struct usb_device *dev, u8 control)
{
 return ch341_control_out(dev, CH341_REQ_MODEM_CTRL, ~control, 0);
}
