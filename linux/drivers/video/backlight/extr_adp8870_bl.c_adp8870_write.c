
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int adp8870_write(struct i2c_client *client, u8 reg, u8 val)
{
 int ret = i2c_smbus_write_byte_data(client, reg, val);

 if (ret)
  dev_err(&client->dev, "failed to write\n");

 return ret;
}
