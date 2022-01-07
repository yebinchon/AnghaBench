
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dev; } ;
typedef scalar_t__ s32 ;


 int dev_err (int *,char*,int,scalar_t__) ;
 scalar_t__ i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int max14656_read_reg(struct i2c_client *client, int reg, u8 *val)
{
 s32 ret;

 ret = i2c_smbus_read_byte_data(client, reg);
 if (ret < 0) {
  dev_err(&client->dev,
   "i2c read fail: can't read from %02x: %d\n",
   reg, ret);
  return ret;
 }
 *val = ret;
 return 0;
}
