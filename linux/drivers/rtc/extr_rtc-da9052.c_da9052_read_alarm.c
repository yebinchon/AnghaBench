
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; scalar_t__ tm_sec; } ;
struct da9052_rtc {int da9052; } ;


 int DA9052_ALARM_MI_REG ;
 int DA9052_GET_TIME_RETRIES ;
 int DA9052_RTC_DAY ;
 int DA9052_RTC_HOUR ;
 int DA9052_RTC_MIN ;
 int DA9052_RTC_MONTH ;
 int DA9052_RTC_YEAR ;
 int EIO ;
 int da9052_group_read (int ,int ,int,int*) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int msleep (int) ;
 int rtc_err (struct da9052_rtc*,char*,...) ;
 int rtc_valid_tm (struct rtc_time*) ;

__attribute__((used)) static int da9052_read_alarm(struct da9052_rtc *rtc, struct rtc_time *rtc_tm)
{
 int ret;
 uint8_t v[2][5];
 int idx = 1;
 int timeout = DA9052_GET_TIME_RETRIES;

 ret = da9052_group_read(rtc->da9052, DA9052_ALARM_MI_REG, 5, &v[0][0]);
 if (ret) {
  rtc_err(rtc, "Failed to group read ALM: %d\n", ret);
  return ret;
 }

 do {
  ret = da9052_group_read(rtc->da9052,
     DA9052_ALARM_MI_REG, 5, &v[idx][0]);
  if (ret) {
   rtc_err(rtc, "Failed to group read ALM: %d\n", ret);
   return ret;
  }

  if (memcmp(&v[0][0], &v[1][0], 5) == 0) {
   rtc_tm->tm_year = (v[0][4] & DA9052_RTC_YEAR) + 100;
   rtc_tm->tm_mon = (v[0][3] & DA9052_RTC_MONTH) - 1;
   rtc_tm->tm_mday = v[0][2] & DA9052_RTC_DAY;
   rtc_tm->tm_hour = v[0][1] & DA9052_RTC_HOUR;
   rtc_tm->tm_min = v[0][0] & DA9052_RTC_MIN;
   rtc_tm->tm_sec = 0;

   ret = rtc_valid_tm(rtc_tm);
   return ret;
  }

  idx = (1-idx);
  msleep(20);

 } while (timeout--);

 rtc_err(rtc, "Timed out reading alarm time\n");

 return -EIO;
}
