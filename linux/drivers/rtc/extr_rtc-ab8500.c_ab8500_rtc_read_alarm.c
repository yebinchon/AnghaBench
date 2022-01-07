
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {int enabled; int time; scalar_t__ pending; } ;
struct device {int dummy; } ;


 int AB8500_RTC ;
 int AB8500_RTC_STAT_REG ;
 int ARRAY_SIZE (int *) ;
 int RTC_ALARM_ENA ;
 int * ab8500_rtc_alarm_regs ;
 int abx500_get_register_interruptible (struct device*,int ,int ,int*) ;
 int rtc_time_to_tm (unsigned long,int *) ;

__attribute__((used)) static int ab8500_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 int retval, i;
 u8 rtc_ctrl, value;
 unsigned char buf[ARRAY_SIZE(ab8500_rtc_alarm_regs)];
 unsigned long secs, mins;


 retval = abx500_get_register_interruptible(dev, AB8500_RTC,
  AB8500_RTC_STAT_REG, &rtc_ctrl);
 if (retval < 0)
  return retval;

 if (rtc_ctrl & RTC_ALARM_ENA)
  alarm->enabled = 1;
 else
  alarm->enabled = 0;

 alarm->pending = 0;

 for (i = 0; i < ARRAY_SIZE(ab8500_rtc_alarm_regs); i++) {
  retval = abx500_get_register_interruptible(dev, AB8500_RTC,
   ab8500_rtc_alarm_regs[i], &value);
  if (retval < 0)
   return retval;
  buf[i] = value;
 }

 mins = (buf[0] << 16) | (buf[1] << 8) | (buf[2]);
 secs = mins * 60;

 rtc_time_to_tm(secs, &alarm->time);

 return 0;
}
