
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct palmas {int dummy; } ;
struct device {int parent; } ;


 int PALMAS_ALARM_SECONDS_REG ;
 int PALMAS_NUM_TIME_REGS ;
 int PALMAS_RTC_BASE ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,...) ;
 struct palmas* dev_get_drvdata (int ) ;
 int palmas_bulk_write (struct palmas*,int ,int ,unsigned char*,int) ;
 int palmas_rtc_alarm_irq_enable (struct device*,int) ;

__attribute__((used)) static int palmas_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 unsigned char alarm_data[PALMAS_NUM_TIME_REGS];
 struct palmas *palmas = dev_get_drvdata(dev->parent);
 int ret;

 ret = palmas_rtc_alarm_irq_enable(dev, 0);
 if (ret < 0) {
  dev_err(dev, "Disable RTC alarm failed\n");
  return ret;
 }

 alarm_data[0] = bin2bcd(alm->time.tm_sec);
 alarm_data[1] = bin2bcd(alm->time.tm_min);
 alarm_data[2] = bin2bcd(alm->time.tm_hour);
 alarm_data[3] = bin2bcd(alm->time.tm_mday);
 alarm_data[4] = bin2bcd(alm->time.tm_mon + 1);
 alarm_data[5] = bin2bcd(alm->time.tm_year - 100);

 ret = palmas_bulk_write(palmas, PALMAS_RTC_BASE,
  PALMAS_ALARM_SECONDS_REG, alarm_data, PALMAS_NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "ALARM_SECONDS_REG write failed, err = %d\n", ret);
  return ret;
 }

 if (alm->enabled)
  ret = palmas_rtc_alarm_irq_enable(dev, 1);
 return ret;
}
