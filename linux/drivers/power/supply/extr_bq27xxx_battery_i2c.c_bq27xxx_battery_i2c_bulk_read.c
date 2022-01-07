
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int adapter; } ;
struct bq27xxx_device_info {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int bq27xxx_battery_i2c_bulk_read(struct bq27xxx_device_info *di, u8 reg,
      u8 *data, int len)
{
 struct i2c_client *client = to_i2c_client(di->dev);
 int ret;

 if (!client->adapter)
  return -ENODEV;

 ret = i2c_smbus_read_i2c_block_data(client, reg, len, data);
 if (ret < 0)
  return ret;
 if (ret != len)
  return -EINVAL;
 return 0;
}
