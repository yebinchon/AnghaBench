
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int adp8870_read(struct i2c_client *client, int reg, uint8_t *val)
{
 int ret;

 ret = i2c_smbus_read_byte_data(client, reg);
 if (ret < 0) {
  dev_err(&client->dev, "failed reading at 0x%02x\n", reg);
  return ret;
 }

 *val = ret;
 return 0;
}
