
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {struct i2c_client** client; } ;
struct i2c_msg {int len; char* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int s35390a_get_reg(struct s35390a *s35390a, int reg, char *buf, int len)
{
 struct i2c_client *client = s35390a->client[reg];
 struct i2c_msg msg[] = {
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = len,
   .buf = buf
  },
 };

 if ((i2c_transfer(client->adapter, msg, 1)) != 1)
  return -EIO;

 return 0;
}
