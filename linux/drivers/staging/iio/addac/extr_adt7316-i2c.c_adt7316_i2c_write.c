
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int adt7316_i2c_write(void *client, u8 reg, u8 data)
{
 struct i2c_client *cl = client;
 int ret;

 ret = i2c_smbus_write_byte_data(cl, reg, data);
 if (ret < 0)
  dev_err(&cl->dev, "I2C write error\n");

 return ret;
}
