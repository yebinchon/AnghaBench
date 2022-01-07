
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65910 {int regmap; } ;
struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int parent; } ;


 int NUM_TIME_REGS ;
 int TPS65910_ALARM_SECONDS ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct tps65910* dev_get_drvdata (int ) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;
 int tps65910_rtc_alarm_irq_enable (struct device*,int) ;

__attribute__((used)) static int tps65910_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 unsigned char alarm_data[NUM_TIME_REGS];
 struct tps65910 *tps = dev_get_drvdata(dev->parent);
 int ret;

 ret = tps65910_rtc_alarm_irq_enable(dev, 0);
 if (ret)
  return ret;

 alarm_data[0] = bin2bcd(alm->time.tm_sec);
 alarm_data[1] = bin2bcd(alm->time.tm_min);
 alarm_data[2] = bin2bcd(alm->time.tm_hour);
 alarm_data[3] = bin2bcd(alm->time.tm_mday);
 alarm_data[4] = bin2bcd(alm->time.tm_mon + 1);
 alarm_data[5] = bin2bcd(alm->time.tm_year - 100);


 ret = regmap_bulk_write(tps->regmap, TPS65910_ALARM_SECONDS,
  alarm_data, NUM_TIME_REGS);
 if (ret) {
  dev_err(dev, "rtc_set_alarm error %d\n", ret);
  return ret;
 }

 if (alm->enabled)
  ret = tps65910_rtc_alarm_irq_enable(dev, 1);

 return ret;
}
