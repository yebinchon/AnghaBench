
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int tm_mon; int tm_year; int tm_mday; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct cmos_rtc {int mon_alrm; int day_alrm; } ;


 int EINVAL ;
 int cmos_read_time (struct device*,struct rtc_time*) ;
 int dev_err (struct device*,char*) ;
 struct cmos_rtc* dev_get_drvdata (struct device*) ;
 int rtc_month_days (int,int) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int cmos_validate_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct cmos_rtc *cmos = dev_get_drvdata(dev);
 struct rtc_time now;

 cmos_read_time(dev, &now);

 if (!cmos->day_alrm) {
  time64_t t_max_date;
  time64_t t_alrm;

  t_max_date = rtc_tm_to_time64(&now);
  t_max_date += 24 * 60 * 60 - 1;
  t_alrm = rtc_tm_to_time64(&t->time);
  if (t_alrm > t_max_date) {
   dev_err(dev,
    "Alarms can be up to one day in the future\n");
   return -EINVAL;
  }
 } else if (!cmos->mon_alrm) {
  struct rtc_time max_date = now;
  time64_t t_max_date;
  time64_t t_alrm;
  int max_mday;

  if (max_date.tm_mon == 11) {
   max_date.tm_mon = 0;
   max_date.tm_year += 1;
  } else {
   max_date.tm_mon += 1;
  }
  max_mday = rtc_month_days(max_date.tm_mon, max_date.tm_year);
  if (max_date.tm_mday > max_mday)
   max_date.tm_mday = max_mday;

  t_max_date = rtc_tm_to_time64(&max_date);
  t_max_date -= 1;
  t_alrm = rtc_tm_to_time64(&t->time);
  if (t_alrm > t_max_date) {
   dev_err(dev,
    "Alarms can be up to one month in the future\n");
   return -EINVAL;
  }
 } else {
  struct rtc_time max_date = now;
  time64_t t_max_date;
  time64_t t_alrm;
  int max_mday;

  max_date.tm_year += 1;
  max_mday = rtc_month_days(max_date.tm_mon, max_date.tm_year);
  if (max_date.tm_mday > max_mday)
   max_date.tm_mday = max_mday;

  t_max_date = rtc_tm_to_time64(&max_date);
  t_max_date -= 1;
  t_alrm = rtc_tm_to_time64(&t->time);
  if (t_alrm > t_max_date) {
   dev_err(dev,
    "Alarms can be up to one year in the future\n");
   return -EINVAL;
  }
 }

 return 0;
}
