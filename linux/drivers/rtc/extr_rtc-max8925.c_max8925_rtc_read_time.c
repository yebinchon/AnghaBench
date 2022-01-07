
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct max8925_rtc_info {int rtc; } ;
struct device {int dummy; } ;


 int MAX8925_RTC_SEC ;
 int TIME_NUM ;
 struct max8925_rtc_info* dev_get_drvdata (struct device*) ;
 int max8925_bulk_read (int ,int ,int,unsigned char*) ;
 int tm_calc (struct rtc_time*,unsigned char*,int) ;

__attribute__((used)) static int max8925_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct max8925_rtc_info *info = dev_get_drvdata(dev);
 unsigned char buf[TIME_NUM];
 int ret;

 ret = max8925_bulk_read(info->rtc, MAX8925_RTC_SEC, TIME_NUM, buf);
 if (ret < 0)
  goto out;
 ret = tm_calc(tm, buf, TIME_NUM);
out:
 return ret;
}
