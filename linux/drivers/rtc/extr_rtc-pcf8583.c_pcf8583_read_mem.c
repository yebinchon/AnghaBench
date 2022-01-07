
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_mem {int nr; unsigned char* data; int loc; } ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EINVAL ;
 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int pcf8583_read_mem(struct i2c_client *client, struct rtc_mem *mem)
{
 unsigned char addr[1];
 struct i2c_msg msgs[2] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1,
   .buf = addr,
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = mem->nr,
   .buf = mem->data,
  }
 };

 if (mem->loc < 8)
  return -EINVAL;

 addr[0] = mem->loc;

 return i2c_transfer(client->adapter, msgs, 2) == 2 ? 0 : -EIO;
}
