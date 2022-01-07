
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int dummy; } ;
struct max8998_rtc_info {scalar_t__ lp3974_bug_workaround; int rtc; } ;
struct device {int dummy; } ;


 int MAX8998_RTC_SEC ;
 struct max8998_rtc_info* dev_get_drvdata (struct device*) ;
 int max8998_bulk_write (int ,int ,int,int *) ;
 int max8998_tm_to_data (struct rtc_time*,int *) ;
 int msleep (int) ;

__attribute__((used)) static int max8998_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct max8998_rtc_info *info = dev_get_drvdata(dev);
 u8 data[8];
 int ret;

 max8998_tm_to_data(tm, data);

 ret = max8998_bulk_write(info->rtc, MAX8998_RTC_SEC, 8, data);

 if (info->lp3974_bug_workaround)
  msleep(2000);

 return ret;
}
