
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef scalar_t__ s32 ;


 int dev_err (int *,char*,int ,int,scalar_t__) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;

__attribute__((used)) static int max14656_write_reg(struct i2c_client *client, int reg, u8 val)
{
 s32 ret;

 ret = i2c_smbus_write_byte_data(client, reg, val);
 if (ret < 0) {
  dev_err(&client->dev,
   "i2c write fail: can't write %02x to %02x: %d\n",
   val, reg, ret);
  return ret;
 }
 return 0;
}
