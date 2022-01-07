
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct rc5t583 {int regmap; } ;
struct device {int parent; } ;


 int NUM_YAL_REGS ;
 int RC5T583_RTC_AY_MIN ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct rc5t583* dev_get_drvdata (int ) ;
 int rc5t583_rtc_alarm_irq_enable (struct device*,int) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;

__attribute__((used)) static int rc5t583_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(dev->parent);
 unsigned char alarm_data[NUM_YAL_REGS];
 int ret;

 ret = rc5t583_rtc_alarm_irq_enable(dev, 0);
 if (ret)
  return ret;

 alarm_data[0] = bin2bcd(alm->time.tm_min);
 alarm_data[1] = bin2bcd(alm->time.tm_hour);
 alarm_data[2] = bin2bcd(alm->time.tm_mday);
 alarm_data[3] = bin2bcd(alm->time.tm_mon + 1);
 alarm_data[4] = bin2bcd(alm->time.tm_year - 100);

 ret = regmap_bulk_write(rc5t583->regmap, RC5T583_RTC_AY_MIN, alarm_data,
  NUM_YAL_REGS);
 if (ret) {
  dev_err(dev, "rtc_set_alarm error %d\n", ret);
  return ret;
 }

 if (alm->enabled)
  ret = rc5t583_rtc_alarm_irq_enable(dev, 1);

 return ret;
}
