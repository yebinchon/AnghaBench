
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_msg {int len; scalar_t__ flags; int addr; scalar_t__* buf; } ;
struct i2c_client {int adapter; int addr; } ;
struct bq27xxx_device_info {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int put_unaligned_le16 (int,scalar_t__*) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int bq27xxx_battery_i2c_write(struct bq27xxx_device_info *di, u8 reg,
         int value, bool single)
{
 struct i2c_client *client = to_i2c_client(di->dev);
 struct i2c_msg msg;
 u8 data[4];
 int ret;

 if (!client->adapter)
  return -ENODEV;

 data[0] = reg;
 if (single) {
  data[1] = (u8) value;
  msg.len = 2;
 } else {
  put_unaligned_le16(value, &data[1]);
  msg.len = 3;
 }

 msg.buf = data;
 msg.addr = client->addr;
 msg.flags = 0;

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret < 0)
  return ret;
 if (ret != 1)
  return -EINVAL;
 return 0;
}
