
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 unsigned short be16_to_cpu (unsigned short) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;

__attribute__((used)) static int ad5398_read_reg(struct i2c_client *client, unsigned short *data)
{
 unsigned short val;
 int ret;

 ret = i2c_master_recv(client, (char *)&val, 2);
 if (ret < 0) {
  dev_err(&client->dev, "I2C read error\n");
  return ret;
 }
 *data = be16_to_cpu(val);

 return ret;
}
