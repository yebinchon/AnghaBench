
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int s32 ;


 int EIO ;
 int ENXIO ;
 int RV8803_I2C_TRY_COUNT ;
 int dev_err (int *,char*,int,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client const*,int,int,int*) ;

__attribute__((used)) static int rv8803_read_regs(const struct i2c_client *client,
       u8 reg, u8 count, u8 *values)
{
 int try = RV8803_I2C_TRY_COUNT;
 s32 ret;

 do
  ret = i2c_smbus_read_i2c_block_data(client, reg, count, values);
 while ((ret == -ENXIO || ret == -EIO) && --try);
 if (ret != count) {
  dev_err(&client->dev,
   "Unable to read registers 0x%02x..0x%02x\n",
   reg, reg + count - 1);
  return ret < 0 ? ret : -EIO;
 }

 return 0;
}
