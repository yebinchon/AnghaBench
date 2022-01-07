
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int isl1208_i2c_read_time (int ,struct rtc_time*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int
isl1208_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 return isl1208_i2c_read_time(to_i2c_client(dev), tm);
}
