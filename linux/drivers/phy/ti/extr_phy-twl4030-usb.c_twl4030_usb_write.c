
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_usb {int dev; } ;


 int TWL_MODULE_USB ;
 int dev_dbg (int ,char*,int ,int) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static inline int twl4030_usb_write(struct twl4030_usb *twl,
  u8 address, u8 data)
{
 int ret = 0;

 ret = twl_i2c_write_u8(TWL_MODULE_USB, data, address);
 if (ret < 0)
  dev_dbg(twl->dev,
   "TWL4030:USB:Write[0x%x] Error %d\n", address, ret);
 return ret;
}
