
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int AB8500_RTC ;
 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * ab8500_rtc_alarm_regs ;
 int ab8500_rtc_irq_enable (struct device*,int ) ;
 int ab8500_rtc_read_time (struct device*,struct rtc_time*) ;
 int abx500_set_register_interruptible (struct device*,int ,int ,unsigned char) ;
 int dev_dbg (struct device*,char*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int ab8500_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 int retval, i;
 unsigned char buf[ARRAY_SIZE(ab8500_rtc_alarm_regs)];
 unsigned long mins, secs = 0, cursec = 0;
 struct rtc_time curtm;


 rtc_tm_to_time(&alarm->time, &secs);






 ab8500_rtc_read_time(dev, &curtm);
 rtc_tm_to_time(&curtm, &cursec);
 if ((secs - cursec) < 59) {
  dev_dbg(dev, "Alarm less than 1 minute not supported\r\n");
  return -EINVAL;
 }

 mins = secs / 60;

 buf[2] = mins & 0xFF;
 buf[1] = (mins >> 8) & 0xFF;
 buf[0] = (mins >> 16) & 0xFF;


 for (i = 0; i < ARRAY_SIZE(ab8500_rtc_alarm_regs); i++) {
  retval = abx500_set_register_interruptible(dev, AB8500_RTC,
   ab8500_rtc_alarm_regs[i], buf[i]);
  if (retval < 0)
   return retval;
 }

 return ab8500_rtc_irq_enable(dev, alarm->enabled);
}
