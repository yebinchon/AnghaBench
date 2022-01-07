
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u8 ;
typedef unsigned long time64_t ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;
typedef int rbuff ;
typedef int buff ;


 unsigned long ALM1_VALID_RANGE_IN_SEC ;
 int RTC_ALARM1_HI ;
 int RTC_COUNT4_DUMMYREAD ;
 int dev_err (struct device*,char*,int) ;
 unsigned long rtc_tm_to_time64 (int *) ;
 struct device* to_tps6586x_dev (struct device*) ;
 int tps6586x_reads (struct device*,int ,int,unsigned long long*) ;
 int tps6586x_rtc_alarm_irq_enable (struct device*,int ) ;
 int tps6586x_writes (struct device*,int ,int,unsigned long long*) ;

__attribute__((used)) static int tps6586x_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct device *tps_dev = to_tps6586x_dev(dev);
 time64_t seconds;
 unsigned long ticks;
 unsigned long rtc_current_time;
 unsigned long long rticks = 0;
 u8 buff[3];
 u8 rbuff[6];
 int ret;
 int i;

 seconds = rtc_tm_to_time64(&alrm->time);

 ret = tps6586x_rtc_alarm_irq_enable(dev, alrm->enabled);
 if (ret < 0) {
  dev_err(dev, "can't set alarm irq, err %d\n", ret);
  return ret;
 }

 ret = tps6586x_reads(tps_dev, RTC_COUNT4_DUMMYREAD,
   sizeof(rbuff), rbuff);
 if (ret < 0) {
  dev_err(dev, "read counter failed with err %d\n", ret);
  return ret;
 }

 for (i = 1; i < sizeof(rbuff); i++) {
  rticks <<= 8;
  rticks |= rbuff[i];
 }

 rtc_current_time = rticks >> 10;
 if ((seconds - rtc_current_time) > ALM1_VALID_RANGE_IN_SEC)
  seconds = rtc_current_time - 1;

 ticks = (unsigned long long)seconds << 10;
 buff[0] = (ticks >> 16) & 0xff;
 buff[1] = (ticks >> 8) & 0xff;
 buff[2] = ticks & 0xff;

 ret = tps6586x_writes(tps_dev, RTC_ALARM1_HI, sizeof(buff), buff);
 if (ret)
  dev_err(dev, "programming alarm failed with err %d\n", ret);

 return ret;
}
