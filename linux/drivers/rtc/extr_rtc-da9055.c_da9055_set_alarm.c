
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtc_time {int tm_year; int tm_mon; int tm_min; int tm_mday; int tm_hour; } ;
struct da9055 {int dev; } ;


 int DA9055_REG_ALARM_H ;
 int DA9055_REG_ALARM_MI ;
 int DA9055_REG_ALARM_MO ;
 int DA9055_REG_ALARM_Y ;
 int DA9055_RTC_ALM_MIN ;
 int DA9055_RTC_ALM_MONTH ;
 int DA9055_RTC_ALM_YEAR ;
 int da9055_group_write (struct da9055*,int ,int,int *) ;
 int da9055_reg_update (struct da9055*,int ,int ,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int da9055_set_alarm(struct da9055 *da9055, struct rtc_time *rtc_tm)
{
 int ret;
 uint8_t v[2];

 rtc_tm->tm_year -= 100;
 rtc_tm->tm_mon += 1;

 ret = da9055_reg_update(da9055, DA9055_REG_ALARM_MI,
    DA9055_RTC_ALM_MIN, rtc_tm->tm_min);
 if (ret != 0) {
  dev_err(da9055->dev, "Failed to write ALRM MIN: %d\n", ret);
  return ret;
 }

 v[0] = rtc_tm->tm_hour;
 v[1] = rtc_tm->tm_mday;

 ret = da9055_group_write(da9055, DA9055_REG_ALARM_H, 2, v);
 if (ret < 0)
  return ret;

 ret = da9055_reg_update(da9055, DA9055_REG_ALARM_MO,
    DA9055_RTC_ALM_MONTH, rtc_tm->tm_mon);
 if (ret < 0)
  dev_err(da9055->dev, "Failed to write ALM Month:%d\n", ret);

 ret = da9055_reg_update(da9055, DA9055_REG_ALARM_Y,
    DA9055_RTC_ALM_YEAR, rtc_tm->tm_year);
 if (ret < 0)
  dev_err(da9055->dev, "Failed to write ALM Year:%d\n", ret);

 return ret;
}
