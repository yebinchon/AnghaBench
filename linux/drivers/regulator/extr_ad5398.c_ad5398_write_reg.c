
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int EIO ;
 unsigned short cpu_to_be16 (unsigned short const) ;
 int dev_err (int *,char*) ;
 int i2c_master_send (struct i2c_client*,char*,int) ;

__attribute__((used)) static int ad5398_write_reg(struct i2c_client *client, const unsigned short data)
{
 unsigned short val;
 int ret;

 val = cpu_to_be16(data);
 ret = i2c_master_send(client, (char *)&val, 2);
 if (ret != 2) {
  dev_err(&client->dev, "I2C write error\n");
  return ret < 0 ? ret : -EIO;
 }

 return 0;
}
