
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct palmas {int dummy; } ;
struct device {int parent; } ;


 int PALMAS_NUM_TIME_REGS ;
 int PALMAS_RTC_BASE ;
 int PALMAS_RTC_CTRL_REG ;
 int PALMAS_RTC_CTRL_REG_STOP_RTC ;
 int PALMAS_SECONDS_REG ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct palmas* dev_get_drvdata (int ) ;
 int palmas_bulk_write (struct palmas*,int ,int ,unsigned char*,int) ;
 int palmas_update_bits (struct palmas*,int ,int ,int ,int ) ;

__attribute__((used)) static int palmas_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char rtc_data[PALMAS_NUM_TIME_REGS];
 struct palmas *palmas = dev_get_drvdata(dev->parent);
 int ret;

 rtc_data[0] = bin2bcd(tm->tm_sec);
 rtc_data[1] = bin2bcd(tm->tm_min);
 rtc_data[2] = bin2bcd(tm->tm_hour);
 rtc_data[3] = bin2bcd(tm->tm_mday);
 rtc_data[4] = bin2bcd(tm->tm_mon + 1);
 rtc_data[5] = bin2bcd(tm->tm_year - 100);


 ret = palmas_update_bits(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
  PALMAS_RTC_CTRL_REG_STOP_RTC, 0);
 if (ret < 0) {
  dev_err(dev, "RTC stop failed, err = %d\n", ret);
  return ret;
 }

 ret = palmas_bulk_write(palmas, PALMAS_RTC_BASE, PALMAS_SECONDS_REG,
  rtc_data, PALMAS_NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "RTC_SECONDS reg write failed, err = %d\n", ret);
  return ret;
 }


 ret = palmas_update_bits(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
  PALMAS_RTC_CTRL_REG_STOP_RTC, PALMAS_RTC_CTRL_REG_STOP_RTC);
 if (ret < 0)
  dev_err(dev, "RTC start failed, err = %d\n", ret);
 return ret;
}
