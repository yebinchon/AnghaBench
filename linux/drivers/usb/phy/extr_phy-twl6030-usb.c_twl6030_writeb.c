
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6030_usb {int dev; } ;


 int dev_err (int ,char*,int ,int) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static inline int twl6030_writeb(struct twl6030_usb *twl, u8 module,
      u8 data, u8 address)
{
 int ret = 0;

 ret = twl_i2c_write_u8(module, data, address);
 if (ret < 0)
  dev_err(twl->dev,
   "Write[0x%x] Error %d\n", address, ret);
 return ret;
}
