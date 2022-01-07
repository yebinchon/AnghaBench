
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; } ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct device {int dummy; } ;
typedef int regs ;


 int EINVAL ;
 int REG_SECONDS ;
 int bin2bcd (int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int pcf8523_start_rtc (struct i2c_client*) ;
 int pcf8523_stop_rtc (struct i2c_client*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int pcf8523_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct i2c_msg msg;
 u8 regs[8];
 int err;
 if (tm->tm_year < 100 || tm->tm_year >= 200)
  return -EINVAL;

 err = pcf8523_stop_rtc(client);
 if (err < 0)
  return err;

 regs[0] = REG_SECONDS;

 regs[1] = bin2bcd(tm->tm_sec);
 regs[2] = bin2bcd(tm->tm_min);
 regs[3] = bin2bcd(tm->tm_hour);
 regs[4] = bin2bcd(tm->tm_mday);
 regs[5] = tm->tm_wday;
 regs[6] = bin2bcd(tm->tm_mon + 1);
 regs[7] = bin2bcd(tm->tm_year - 100);

 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = sizeof(regs);
 msg.buf = regs;

 err = i2c_transfer(client->adapter, &msg, 1);
 if (err < 0) {





  pcf8523_start_rtc(client);
  return err;
 }

 return pcf8523_start_rtc(client);
}
