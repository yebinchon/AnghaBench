
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int DS1374_REG_TOD0 ;
 int ds1374_read_rtc (struct i2c_client*,int *,int ,int) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1374_read_time(struct device *dev, struct rtc_time *time)
{
 struct i2c_client *client = to_i2c_client(dev);
 u32 itime;
 int ret;

 ret = ds1374_read_rtc(client, &itime, DS1374_REG_TOD0, 4);
 if (!ret)
  rtc_time_to_tm(itime, time);

 return ret;
}
