
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int AB8500_RTC ;
 int AB8500_RTC_READ_REQ_REG ;
 int ARRAY_SIZE (int *) ;
 unsigned long COUNTS_PER_SEC ;
 unsigned long HZ ;
 unsigned char RTC_READ_REQUEST ;
 int * ab8500_rtc_time_regs ;
 int abx500_get_register_interruptible (struct device*,int ,int ,unsigned char*) ;
 int abx500_set_register_interruptible (struct device*,int ,int ,unsigned char) ;
 unsigned long jiffies ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ab8500_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long timeout = jiffies + HZ;
 int retval, i;
 unsigned long mins, secs;
 unsigned char buf[ARRAY_SIZE(ab8500_rtc_time_regs)];
 u8 value;


 retval = abx500_set_register_interruptible(dev,
  AB8500_RTC, AB8500_RTC_READ_REQ_REG, RTC_READ_REQUEST);
 if (retval < 0)
  return retval;


 while (time_before(jiffies, timeout)) {
  retval = abx500_get_register_interruptible(dev,
   AB8500_RTC, AB8500_RTC_READ_REQ_REG, &value);
  if (retval < 0)
   return retval;

  if (!(value & RTC_READ_REQUEST))
   break;

  usleep_range(1000, 5000);
 }


 for (i = 0; i < ARRAY_SIZE(ab8500_rtc_time_regs); i++) {
  retval = abx500_get_register_interruptible(dev,
   AB8500_RTC, ab8500_rtc_time_regs[i], &value);
  if (retval < 0)
   return retval;
  buf[i] = value;
 }

 mins = (buf[0] << 16) | (buf[1] << 8) | buf[2];

 secs = (buf[3] << 8) | buf[4];
 secs = secs / COUNTS_PER_SEC;
 secs = secs + (mins * 60);

 rtc_time_to_tm(secs, tm);
 return 0;
}
