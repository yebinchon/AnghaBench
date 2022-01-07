
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int op ;


 int EIO ;
 int ISL12026_REG_SR ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl12026_disarm_write(struct i2c_client *client)
{
 int ret;
 u8 op[3] = {0, ISL12026_REG_SR, 0};
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = sizeof(op),
  .buf = op
 };

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  dev_err(&client->dev,
   "write error SR, ret=%d\n", ret);
  ret = ret < 0 ? ret : -EIO;
 } else {
  ret = 0;
 }

 return ret;
}
