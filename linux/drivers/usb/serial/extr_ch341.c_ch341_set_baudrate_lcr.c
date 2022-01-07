
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef short u8 ;
struct usb_device {int dummy; } ;
struct ch341_private {unsigned long baud_rate; } ;


 short BIT (int) ;
 short CH341_BAUDBASE_DIVMAX ;
 unsigned long CH341_BAUDBASE_FACTOR ;
 int CH341_REQ_WRITE_REG ;
 int EINVAL ;
 int ch341_control_out (struct usb_device*,int ,int,short) ;

__attribute__((used)) static int ch341_set_baudrate_lcr(struct usb_device *dev,
      struct ch341_private *priv, u8 lcr)
{
 short a;
 int r;
 unsigned long factor;
 short divisor;

 if (!priv->baud_rate)
  return -EINVAL;
 factor = (CH341_BAUDBASE_FACTOR / priv->baud_rate);
 divisor = CH341_BAUDBASE_DIVMAX;

 while ((factor > 0xfff0) && divisor) {
  factor >>= 3;
  divisor--;
 }

 if (factor > 0xfff0)
  return -EINVAL;

 factor = 0x10000 - factor;
 a = (factor & 0xff00) | divisor;





 a |= BIT(7);

 r = ch341_control_out(dev, CH341_REQ_WRITE_REG, 0x1312, a);
 if (r)
  return r;

 r = ch341_control_out(dev, CH341_REQ_WRITE_REG, 0x2518, lcr);
 if (r)
  return r;

 return r;
}
