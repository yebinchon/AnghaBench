
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rsi_hw {scalar_t__ rsi_dev; } ;
struct rsi_91x_usbdev {scalar_t__ write_fail; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENODEV ;
 int rsi_usb_card_write (struct rsi_hw*,scalar_t__*,int ,scalar_t__) ;

__attribute__((used)) static int rsi_write_multiple(struct rsi_hw *adapter,
         u8 endpoint,
         u8 *data,
         u32 count)
{
 struct rsi_91x_usbdev *dev;

 if (!adapter)
  return -ENODEV;

 if (endpoint == 0)
  return -EINVAL;

 dev = (struct rsi_91x_usbdev *)adapter->rsi_dev;
 if (dev->write_fail)
  return -ENETDOWN;

 return rsi_usb_card_write(adapter, data, count, endpoint);
}
