
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int* buf; int len; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct bq27xxx_device_info {int dev; } ;
typedef int reg ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int ENODEV ;
 scalar_t__ I2C_M_RD ;
 int get_unaligned_le16 (int*) ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int bq27xxx_battery_i2c_read(struct bq27xxx_device_info *di, u8 reg,
        bool single)
{
 struct i2c_client *client = to_i2c_client(di->dev);
 struct i2c_msg msg[2];
 u8 data[2];
 int ret;

 if (!client->adapter)
  return -ENODEV;

 msg[0].addr = client->addr;
 msg[0].flags = 0;
 msg[0].buf = &reg;
 msg[0].len = sizeof(reg);
 msg[1].addr = client->addr;
 msg[1].flags = I2C_M_RD;
 msg[1].buf = data;
 if (single)
  msg[1].len = 1;
 else
  msg[1].len = 2;

 ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
 if (ret < 0)
  return ret;

 if (!single)
  ret = get_unaligned_le16(data);
 else
  ret = data[0];

 return ret;
}
