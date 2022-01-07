
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tps65910 {int regmap; } ;
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct device {int parent; } ;


 int NUM_TIME_REGS ;
 int TPS65910_ALARM_SECONDS ;
 int TPS65910_RTC_INTERRUPTS ;
 int TPS65910_RTC_INTERRUPTS_IT_ALARM ;
 void* bcd2bin (unsigned char) ;
 int dev_err (struct device*,char*,int) ;
 struct tps65910* dev_get_drvdata (int ) ;
 int regmap_bulk_read (int ,int ,unsigned char*,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int tps65910_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 unsigned char alarm_data[NUM_TIME_REGS];
 u32 int_val;
 struct tps65910 *tps = dev_get_drvdata(dev->parent);
 int ret;

 ret = regmap_bulk_read(tps->regmap, TPS65910_ALARM_SECONDS, alarm_data,
  NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_read_alarm error %d\n", ret);
  return ret;
 }

 alm->time.tm_sec = bcd2bin(alarm_data[0]);
 alm->time.tm_min = bcd2bin(alarm_data[1]);
 alm->time.tm_hour = bcd2bin(alarm_data[2]);
 alm->time.tm_mday = bcd2bin(alarm_data[3]);
 alm->time.tm_mon = bcd2bin(alarm_data[4]) - 1;
 alm->time.tm_year = bcd2bin(alarm_data[5]) + 100;

 ret = regmap_read(tps->regmap, TPS65910_RTC_INTERRUPTS, &int_val);
 if (ret < 0)
  return ret;

 if (int_val & TPS65910_RTC_INTERRUPTS_IT_ALARM)
  alm->enabled = 1;

 return ret;
}
