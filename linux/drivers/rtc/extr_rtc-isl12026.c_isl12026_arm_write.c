
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EIO ;
 int ISL12026_REG_SR ;
 int ISL12026_REG_SR_RWEL ;
 int ISL12026_REG_SR_WEL ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl12026_arm_write(struct i2c_client *client)
{
 int ret;
 u8 op[3];
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = 1,
  .buf = op
 };


 op[0] = 0;
 op[1] = ISL12026_REG_SR;
 op[2] = ISL12026_REG_SR_WEL;
 msg.len = 3;
 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  dev_err(&client->dev, "write error SR.WEL, ret=%d\n", ret);
  ret = ret < 0 ? ret : -EIO;
  goto out;
 }


 op[2] = ISL12026_REG_SR_WEL | ISL12026_REG_SR_RWEL;
 msg.len = 3;
 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  dev_err(&client->dev,
   "write error SR.WEL|SR.RWEL, ret=%d\n", ret);
  ret = ret < 0 ? ret : -EIO;
  goto out;
 } else {
  ret = 0;
 }
out:
 return ret;
}
