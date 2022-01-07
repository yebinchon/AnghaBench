
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int ,int *) ;

__attribute__((used)) static int max14656_read_block_reg(struct i2c_client *client, u8 reg,
      u8 length, u8 *val)
{
 int ret;

 ret = i2c_smbus_read_i2c_block_data(client, reg, length, val);
 if (ret < 0) {
  dev_err(&client->dev, "failed to block read reg 0x%x: %d\n",
    reg, ret);
  return ret;
 }

 return 0;
}
