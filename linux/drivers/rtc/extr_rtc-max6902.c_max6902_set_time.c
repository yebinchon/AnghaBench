
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; } ;
struct device {int dummy; } ;


 int MAX6902_REG_CENTURY ;
 int MAX6902_REG_CONTROL ;
 int MAX6902_REG_DATE ;
 int MAX6902_REG_DAY ;
 int MAX6902_REG_HOURS ;
 int MAX6902_REG_MINUTES ;
 int MAX6902_REG_MONTH ;
 int MAX6902_REG_SECONDS ;
 int MAX6902_REG_YEAR ;
 int bin2bcd (int) ;
 int max6902_set_reg (struct device*,int ,int) ;

__attribute__((used)) static int max6902_set_time(struct device *dev, struct rtc_time *dt)
{
 dt->tm_year = dt->tm_year + 1900;


 max6902_set_reg(dev, MAX6902_REG_CONTROL, 0);

 max6902_set_reg(dev, MAX6902_REG_SECONDS, bin2bcd(dt->tm_sec));
 max6902_set_reg(dev, MAX6902_REG_MINUTES, bin2bcd(dt->tm_min));
 max6902_set_reg(dev, MAX6902_REG_HOURS, bin2bcd(dt->tm_hour));

 max6902_set_reg(dev, MAX6902_REG_DATE, bin2bcd(dt->tm_mday));
 max6902_set_reg(dev, MAX6902_REG_MONTH, bin2bcd(dt->tm_mon + 1));
 max6902_set_reg(dev, MAX6902_REG_DAY, bin2bcd(dt->tm_wday));
 max6902_set_reg(dev, MAX6902_REG_YEAR, bin2bcd(dt->tm_year % 100));
 max6902_set_reg(dev, MAX6902_REG_CENTURY, bin2bcd(dt->tm_year / 100));






 max6902_set_reg(dev, MAX6902_REG_CONTROL, 0x80);

 return 0;
}
