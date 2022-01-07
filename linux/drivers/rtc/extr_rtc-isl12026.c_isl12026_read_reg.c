
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int addr ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl12026_read_reg(struct i2c_client *client, int reg)
{
 u8 addr[] = {0, reg};
 u8 val;
 int ret;

 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = sizeof(addr),
   .buf = addr
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = &val
  }
 };

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret != ARRAY_SIZE(msgs)) {
  dev_err(&client->dev, "read reg error, ret=%d\n", ret);
  ret = ret < 0 ? ret : -EIO;
 } else {
  ret = val;
 }

 return ret;
}
