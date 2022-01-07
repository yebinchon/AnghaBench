
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct device {int dummy; } ;
typedef int op ;


 int EIO ;
 int ISL12026_REG_HR_MIL ;
 int ISL12026_REG_SC ;
 int bin2bcd (int) ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int isl12026_arm_write (struct i2c_client*) ;
 int isl12026_disarm_write (struct i2c_client*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int isl12026_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct i2c_client *client = to_i2c_client(dev);
 int ret;
 u8 op[10];
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = sizeof(op),
  .buf = op
 };

 ret = isl12026_arm_write(client);
 if (ret)
  return ret;


 op[0] = 0;
 op[1] = ISL12026_REG_SC;
 op[2] = bin2bcd(tm->tm_sec);
 op[3] = bin2bcd(tm->tm_min);
 op[4] = bin2bcd(tm->tm_hour) | ISL12026_REG_HR_MIL;
 op[5] = bin2bcd(tm->tm_mday);
 op[6] = bin2bcd(tm->tm_mon + 1);
 op[7] = bin2bcd(tm->tm_year % 100);
 op[8] = bin2bcd(tm->tm_wday & 7);
 op[9] = bin2bcd(tm->tm_year >= 100 ? 20 : 19);
 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  dev_err(&client->dev, "write error CCR, ret=%d\n", ret);
  ret = ret < 0 ? ret : -EIO;
  goto out;
 }

 ret = isl12026_disarm_write(client);
out:
 return ret;
}
