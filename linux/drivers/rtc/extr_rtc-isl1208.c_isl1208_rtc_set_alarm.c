
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int dummy; } ;
struct device {int dummy; } ;


 int isl1208_i2c_set_alarm (int ,struct rtc_wkalrm*) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static int
isl1208_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 return isl1208_i2c_set_alarm(to_i2c_client(dev), alarm);
}
