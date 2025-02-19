
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int DS1374_REG_TOD0 ;
 int ds1374_write_rtc (struct i2c_client*,unsigned long,int ,int) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int ds1374_set_time(struct device *dev, struct rtc_time *time)
{
 struct i2c_client *client = to_i2c_client(dev);
 unsigned long itime;

 rtc_tm_to_time(time, &itime);
 return ds1374_write_rtc(client, itime, DS1374_REG_TOD0, 4);
}
