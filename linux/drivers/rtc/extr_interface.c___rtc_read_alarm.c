
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_mon; scalar_t__ tm_year; int tm_sec; int tm_mday; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct rtc_device {int dev; } ;


 int dev_dbg (int *,char*,char*) ;
 int dev_warn (int *,char*,...) ;
 int is_leap_year (scalar_t__) ;
 int memcpy (struct rtc_time*,struct rtc_time*,int) ;
 int rtc_add_offset (struct rtc_device*,struct rtc_time*) ;
 unsigned int rtc_month_days (int,scalar_t__) ;
 int rtc_read_alarm_internal (struct rtc_device*,struct rtc_wkalrm*) ;
 int rtc_read_time (struct rtc_device*,struct rtc_time*) ;
 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;
 int rtc_valid_tm (struct rtc_time*) ;

int __rtc_read_alarm(struct rtc_device *rtc, struct rtc_wkalrm *alarm)
{
 int err;
 struct rtc_time before, now;
 int first_time = 1;
 time64_t t_now, t_alm;
 enum { none, day, month, year } missing = none;
 unsigned int days;
 err = rtc_read_time(rtc, &before);
 if (err < 0)
  return err;
 do {
  if (!first_time)
   memcpy(&before, &now, sizeof(struct rtc_time));
  first_time = 0;


  err = rtc_read_alarm_internal(rtc, alarm);
  if (err)
   return err;


  if (rtc_valid_tm(&alarm->time) == 0) {
   rtc_add_offset(rtc, &alarm->time);
   return 0;
  }


  err = rtc_read_time(rtc, &now);
  if (err < 0)
   return err;


 } while (before.tm_min != now.tm_min ||
   before.tm_hour != now.tm_hour ||
   before.tm_mon != now.tm_mon ||
   before.tm_year != now.tm_year);




 if (alarm->time.tm_sec == -1)
  alarm->time.tm_sec = now.tm_sec;
 if (alarm->time.tm_min == -1)
  alarm->time.tm_min = now.tm_min;
 if (alarm->time.tm_hour == -1)
  alarm->time.tm_hour = now.tm_hour;


 if (alarm->time.tm_mday < 1 || alarm->time.tm_mday > 31) {
  alarm->time.tm_mday = now.tm_mday;
  missing = day;
 }
 if ((unsigned int)alarm->time.tm_mon >= 12) {
  alarm->time.tm_mon = now.tm_mon;
  if (missing == none)
   missing = month;
 }
 if (alarm->time.tm_year == -1) {
  alarm->time.tm_year = now.tm_year;
  if (missing == none)
   missing = year;
 }




 err = rtc_valid_tm(&alarm->time);
 if (err)
  goto done;


 t_now = rtc_tm_to_time64(&now);
 t_alm = rtc_tm_to_time64(&alarm->time);
 if (t_now < t_alm)
  goto done;

 switch (missing) {





 case day:
  dev_dbg(&rtc->dev, "alarm rollover: %s\n", "day");
  t_alm += 24 * 60 * 60;
  rtc_time64_to_tm(t_alm, &alarm->time);
  break;






 case month:
  dev_dbg(&rtc->dev, "alarm rollover: %s\n", "month");
  do {
   if (alarm->time.tm_mon < 11) {
    alarm->time.tm_mon++;
   } else {
    alarm->time.tm_mon = 0;
    alarm->time.tm_year++;
   }
   days = rtc_month_days(alarm->time.tm_mon,
           alarm->time.tm_year);
  } while (days < alarm->time.tm_mday);
  break;


 case year:
  dev_dbg(&rtc->dev, "alarm rollover: %s\n", "year");
  do {
   alarm->time.tm_year++;
  } while (!is_leap_year(alarm->time.tm_year + 1900) &&
    rtc_valid_tm(&alarm->time) != 0);
  break;

 default:
  dev_warn(&rtc->dev, "alarm rollover not handled\n");
 }

 err = rtc_valid_tm(&alarm->time);

done:
 if (err)
  dev_warn(&rtc->dev, "invalid alarm value: %ptR\n",
    &alarm->time);

 return err;
}
