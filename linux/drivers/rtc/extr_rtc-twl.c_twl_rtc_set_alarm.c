
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct twl_rtc {int * reg_map; } ;
struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;


 int ALL_TIME_REGS ;
 size_t REG_ALARM_SECONDS_REG ;
 int TWL_MODULE_RTC ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct twl_rtc* dev_get_drvdata (struct device*) ;
 int twl_i2c_write (int ,unsigned char*,int ,int) ;
 int twl_rtc_alarm_irq_enable (struct device*,int) ;

__attribute__((used)) static int twl_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct twl_rtc *twl_rtc = dev_get_drvdata(dev);

 unsigned char alarm_data[ALL_TIME_REGS];
 int ret;

 ret = twl_rtc_alarm_irq_enable(dev, 0);
 if (ret)
  goto out;

 alarm_data[0] = bin2bcd(alm->time.tm_sec);
 alarm_data[1] = bin2bcd(alm->time.tm_min);
 alarm_data[2] = bin2bcd(alm->time.tm_hour);
 alarm_data[3] = bin2bcd(alm->time.tm_mday);
 alarm_data[4] = bin2bcd(alm->time.tm_mon + 1);
 alarm_data[5] = bin2bcd(alm->time.tm_year - 100);


 ret = twl_i2c_write(TWL_MODULE_RTC, alarm_data,
   twl_rtc->reg_map[REG_ALARM_SECONDS_REG], ALL_TIME_REGS);
 if (ret) {
  dev_err(dev, "rtc_set_alarm error %d\n", ret);
  goto out;
 }

 if (alm->enabled)
  ret = twl_rtc_alarm_irq_enable(dev, 1);
out:
 return ret;
}
