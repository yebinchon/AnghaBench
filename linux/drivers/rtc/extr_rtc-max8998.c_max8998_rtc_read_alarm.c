
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct max8998_rtc_info {int rtc; } ;
struct device {int dummy; } ;


 int ALARM0_STATUS ;
 int MAX8998_ALARM0_CONF ;
 int MAX8998_ALARM0_SEC ;
 int MAX8998_RTC_STATUS ;
 struct max8998_rtc_info* dev_get_drvdata (struct device*) ;
 int max8998_bulk_read (int ,int ,int,int*) ;
 int max8998_data_to_tm (int*,int *) ;
 int max8998_read_reg (int ,int ,int*) ;

__attribute__((used)) static int max8998_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct max8998_rtc_info *info = dev_get_drvdata(dev);
 u8 data[8];
 u8 val;
 int ret;

 ret = max8998_bulk_read(info->rtc, MAX8998_ALARM0_SEC, 8, data);
 if (ret < 0)
  return ret;

 max8998_data_to_tm(data, &alrm->time);

 ret = max8998_read_reg(info->rtc, MAX8998_ALARM0_CONF, &val);
 if (ret < 0)
  return ret;

 alrm->enabled = !!val;

 ret = max8998_read_reg(info->rtc, MAX8998_RTC_STATUS, &val);
 if (ret < 0)
  return ret;

 if (val & ALARM0_STATUS)
  alrm->pending = 1;
 else
  alrm->pending = 0;

 return 0;
}
