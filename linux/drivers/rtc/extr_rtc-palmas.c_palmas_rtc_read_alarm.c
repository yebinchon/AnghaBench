
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct palmas {int dummy; } ;
struct device {int parent; } ;


 int PALMAS_ALARM_SECONDS_REG ;
 int PALMAS_NUM_TIME_REGS ;
 int PALMAS_RTC_BASE ;
 int PALMAS_RTC_INTERRUPTS_REG ;
 int PALMAS_RTC_INTERRUPTS_REG_IT_ALARM ;
 void* bcd2bin (unsigned char) ;
 int dev_err (struct device*,char*,int) ;
 struct palmas* dev_get_drvdata (int ) ;
 int palmas_bulk_read (struct palmas*,int ,int ,unsigned char*,int) ;
 int palmas_read (struct palmas*,int ,int ,int*) ;

__attribute__((used)) static int palmas_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 unsigned char alarm_data[PALMAS_NUM_TIME_REGS];
 u32 int_val;
 struct palmas *palmas = dev_get_drvdata(dev->parent);
 int ret;

 ret = palmas_bulk_read(palmas, PALMAS_RTC_BASE,
   PALMAS_ALARM_SECONDS_REG,
   alarm_data, PALMAS_NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "RTC_ALARM_SECONDS read failed, err = %d\n", ret);
  return ret;
 }

 alm->time.tm_sec = bcd2bin(alarm_data[0]);
 alm->time.tm_min = bcd2bin(alarm_data[1]);
 alm->time.tm_hour = bcd2bin(alarm_data[2]);
 alm->time.tm_mday = bcd2bin(alarm_data[3]);
 alm->time.tm_mon = bcd2bin(alarm_data[4]) - 1;
 alm->time.tm_year = bcd2bin(alarm_data[5]) + 100;

 ret = palmas_read(palmas, PALMAS_RTC_BASE, PALMAS_RTC_INTERRUPTS_REG,
   &int_val);
 if (ret < 0) {
  dev_err(dev, "RTC_INTERRUPTS reg read failed, err = %d\n", ret);
  return ret;
 }

 if (int_val & PALMAS_RTC_INTERRUPTS_REG_IT_ALARM)
  alm->enabled = 1;
 return ret;
}
