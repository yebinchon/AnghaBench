
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct twl4030_usb {int dev; } ;


 int EBUSY ;
 int dev_dbg (int ,char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ twl_i2c_read_u8 (scalar_t__,scalar_t__*,scalar_t__) ;
 scalar_t__ twl_i2c_write_u8 (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int twl4030_i2c_write_u8_verify(struct twl4030_usb *twl,
  u8 module, u8 data, u8 address)
{
 u8 check = 0xFF;

 if ((twl_i2c_write_u8(module, data, address) >= 0) &&
     (twl_i2c_read_u8(module, &check, address) >= 0) &&
      (check == data))
  return 0;
 dev_dbg(twl->dev, "Write%d[%d,0x%x] wrote %02x but read %02x\n",
   1, module, address, check, data);


 if ((twl_i2c_write_u8(module, data, address) >= 0) &&
     (twl_i2c_read_u8(module, &check, address) >= 0) &&
      (check == data))
  return 0;
 dev_dbg(twl->dev, "Write%d[%d,0x%x] wrote %02x but read %02x\n",
   2, module, address, check, data);


 return -EBUSY;
}
