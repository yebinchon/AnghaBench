
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int op ;


 int EIO ;
 int ISL12026_NVMEM_WRITE_TIME ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int isl12026_arm_write (struct i2c_client*) ;
 int isl12026_disarm_write (struct i2c_client*) ;
 int msleep (int ) ;

__attribute__((used)) static int isl12026_write_reg(struct i2c_client *client, int reg, u8 val)
{
 int ret;
 u8 op[3] = {0, reg, val};
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = sizeof(op),
  .buf = op
 };

 ret = isl12026_arm_write(client);
 if (ret)
  return ret;

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  dev_err(&client->dev, "write error CCR, ret=%d\n", ret);
  ret = ret < 0 ? ret : -EIO;
  goto out;
 }

 msleep(ISL12026_NVMEM_WRITE_TIME);

 ret = isl12026_disarm_write(client);
out:
 return ret;
}
