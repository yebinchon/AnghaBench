
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int I2C_M_RD ;
 int dev_err (int *,char*,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int swab16 (int ) ;

__attribute__((used)) static int ov9740_reg_read(struct i2c_client *client, u16 reg, u8 *val)
{
 int ret;
 struct i2c_msg msg[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 2,
   .buf = (u8 *)&reg,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = val,
  },
 };

 reg = swab16(reg);

 ret = i2c_transfer(client->adapter, msg, 2);
 if (ret < 0) {
  dev_err(&client->dev, "Failed reading register 0x%04x!\n", reg);
  return ret;
 }

 return 0;
}
