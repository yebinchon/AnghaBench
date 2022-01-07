
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int dummy; } ;
struct max8998_rtc_info {int rtc; } ;
struct device {int dummy; } ;


 int MAX8998_RTC_SEC ;
 struct max8998_rtc_info* dev_get_drvdata (struct device*) ;
 int max8998_bulk_read (int ,int ,int,int *) ;
 int max8998_data_to_tm (int *,struct rtc_time*) ;

__attribute__((used)) static int max8998_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct max8998_rtc_info *info = dev_get_drvdata(dev);
 u8 data[8];
 int ret;

 ret = max8998_bulk_read(info->rtc, MAX8998_RTC_SEC, 8, data);
 if (ret < 0)
  return ret;

 max8998_data_to_tm(data, tm);

 return 0;
}
