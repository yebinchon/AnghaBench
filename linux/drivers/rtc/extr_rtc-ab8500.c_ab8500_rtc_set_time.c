
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AB8500_RTC ;
 int AB8500_RTC_READ_REQ_REG ;
 int ARRAY_SIZE (int *) ;
 unsigned long COUNTS_PER_SEC ;
 unsigned char RTC_WRITE_REQUEST ;
 int * ab8500_rtc_time_regs ;
 int abx500_set_register_interruptible (struct device*,int ,int ,unsigned char) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int ab8500_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 int retval, i;
 unsigned char buf[ARRAY_SIZE(ab8500_rtc_time_regs)];
 unsigned long no_secs, no_mins, secs = 0;

 rtc_tm_to_time(tm, &secs);

 no_mins = secs / 60;

 no_secs = secs % 60;

 no_secs = no_secs * COUNTS_PER_SEC;

 buf[4] = no_secs & 0xFF;
 buf[3] = (no_secs >> 8) & 0xFF;

 buf[2] = no_mins & 0xFF;
 buf[1] = (no_mins >> 8) & 0xFF;
 buf[0] = (no_mins >> 16) & 0xFF;

 for (i = 0; i < ARRAY_SIZE(ab8500_rtc_time_regs); i++) {
  retval = abx500_set_register_interruptible(dev, AB8500_RTC,
   ab8500_rtc_time_regs[i], buf[i]);
  if (retval < 0)
   return retval;
 }


 return abx500_set_register_interruptible(dev, AB8500_RTC,
  AB8500_RTC_READ_REQ_REG, RTC_WRITE_REQUEST);
}
