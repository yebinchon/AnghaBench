
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_usbdev {struct usb_device* usbdev; } ;


 int rsi_usb_reg_read (struct usb_device*,int ,int *,int ) ;

__attribute__((used)) static int rsi_usb_master_reg_read(struct rsi_hw *adapter, u32 reg,
       u32 *value, u16 len)
{
 struct usb_device *usbdev =
  ((struct rsi_91x_usbdev *)adapter->rsi_dev)->usbdev;
 u16 temp;
 int ret;

 ret = rsi_usb_reg_read(usbdev, reg, &temp, len);
 if (ret < 0)
  return ret;
 *value = temp;

 return 0;
}
