
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct as3722_rtc {struct as3722* as3722; } ;
struct as3722 {int dummy; } ;


 int AS3722_RTC_ALARM_SECOND_REG ;
 int AS3722_RTC_START_YEAR ;
 int EINVAL ;
 int as3722_block_write (struct as3722*,int ,int,int *) ;
 int as3722_rtc_alarm_irq_enable (struct device*,scalar_t__) ;
 int as3722_time_to_reg (int *,TYPE_1__*) ;
 int dev_err (struct device*,char*,...) ;
 struct as3722_rtc* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int as3722_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct as3722_rtc *as3722_rtc = dev_get_drvdata(dev);
 struct as3722 *as3722 = as3722_rtc->as3722;
 u8 as_time_array[6];
 int ret;

 if (alrm->time.tm_year < (AS3722_RTC_START_YEAR - 1900))
  return -EINVAL;

 ret = as3722_rtc_alarm_irq_enable(dev, 0);
 if (ret < 0) {
  dev_err(dev, "Disable RTC alarm failed\n");
  return ret;
 }

 as3722_time_to_reg(as_time_array, &alrm->time);
 ret = as3722_block_write(as3722, AS3722_RTC_ALARM_SECOND_REG, 6,
   as_time_array);
 if (ret < 0) {
  dev_err(dev, "RTC_ALARM_SECOND block write failed %d\n", ret);
  return ret;
 }

 if (alrm->enabled)
  ret = as3722_rtc_alarm_irq_enable(dev, alrm->enabled);
 return ret;
}
