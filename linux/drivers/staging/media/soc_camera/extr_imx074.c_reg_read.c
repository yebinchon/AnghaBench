
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
struct i2c_msg {int len; int const* buf; int flags; int addr; } ;
struct i2c_client {int addr; int dev; int adapter; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int I2C_M_RD ;
 int dev_warn (int *,char*,int const,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int ) ;

__attribute__((used)) static int reg_read(struct i2c_client *client, const u16 addr)
{
 u8 buf[2] = {addr >> 8, addr & 0xff};
 int ret;
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 2,
   .buf = buf,
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 2,
   .buf = buf,
  },
 };

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret < 0) {
  dev_warn(&client->dev, "Reading register %x from %x failed\n",
    addr, client->addr);
  return ret;
 }

 return buf[0] & 0xff;
}
