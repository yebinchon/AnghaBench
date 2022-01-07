
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; scalar_t__ flags; int addr; int * buf; } ;
struct i2c_client {int adapter; int addr; } ;
struct bq27xxx_device_info {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int *,int *,int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int bq27xxx_battery_i2c_bulk_write(struct bq27xxx_device_info *di,
       u8 reg, u8 *data, int len)
{
 struct i2c_client *client = to_i2c_client(di->dev);
 struct i2c_msg msg;
 u8 buf[33];
 int ret;

 if (!client->adapter)
  return -ENODEV;

 buf[0] = reg;
 memcpy(&buf[1], data, len);

 msg.buf = buf;
 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = len + 1;

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret < 0)
  return ret;
 if (ret != 1)
  return -EINVAL;
 return 0;
}
