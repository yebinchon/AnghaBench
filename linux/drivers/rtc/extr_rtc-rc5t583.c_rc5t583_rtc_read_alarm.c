
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct rc5t583 {int regmap; } ;
struct device {int parent; } ;


 int NUM_YAL_REGS ;
 int RC5T583_RTC_AY_MIN ;
 int RC5T583_RTC_CTL1 ;
 int SET_YAL ;
 void* bcd2bin (unsigned char) ;
 int dev_err (struct device*,char*,int) ;
 struct rc5t583* dev_get_drvdata (int ) ;
 int regmap_bulk_read (int ,int ,unsigned char*,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int rc5t583_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(dev->parent);
 unsigned char alarm_data[NUM_YAL_REGS];
 u32 interrupt_enable;
 int ret;

 ret = regmap_bulk_read(rc5t583->regmap, RC5T583_RTC_AY_MIN, alarm_data,
  NUM_YAL_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_read_alarm error %d\n", ret);
  return ret;
 }

 alm->time.tm_sec = 0;
 alm->time.tm_min = bcd2bin(alarm_data[0]);
 alm->time.tm_hour = bcd2bin(alarm_data[1]);
 alm->time.tm_mday = bcd2bin(alarm_data[2]);
 alm->time.tm_mon = bcd2bin(alarm_data[3]) - 1;
 alm->time.tm_year = bcd2bin(alarm_data[4]) + 100;

 ret = regmap_read(rc5t583->regmap, RC5T583_RTC_CTL1, &interrupt_enable);
 if (ret < 0)
  return ret;


 if (interrupt_enable & SET_YAL)
  alm->enabled = 1;

 return ret;
}
