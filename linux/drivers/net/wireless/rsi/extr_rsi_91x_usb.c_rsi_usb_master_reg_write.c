
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_usbdev {struct usb_device* usbdev; } ;


 int rsi_usb_reg_write (struct usb_device*,unsigned long,unsigned long,int ) ;

__attribute__((used)) static int rsi_usb_master_reg_write(struct rsi_hw *adapter,
        unsigned long reg,
        unsigned long value, u16 len)
{
 struct usb_device *usbdev =
  ((struct rsi_91x_usbdev *)adapter->rsi_dev)->usbdev;

 return rsi_usb_reg_write(usbdev, reg, value, len);
}
