
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;
struct da9055_rtc {int da9055; } ;


 int DA9055_REG_COUNT_S ;
 int da9055_group_write (int ,int ,int,scalar_t__*) ;
 struct da9055_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int da9055_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct da9055_rtc *rtc;
 uint8_t v[6];

 rtc = dev_get_drvdata(dev);

 v[0] = tm->tm_sec;
 v[1] = tm->tm_min;
 v[2] = tm->tm_hour;
 v[3] = tm->tm_mday;
 v[4] = tm->tm_mon + 1;
 v[5] = tm->tm_year - 100;

 return da9055_group_write(rtc->da9055, DA9055_REG_COUNT_S, 6, v);
}
