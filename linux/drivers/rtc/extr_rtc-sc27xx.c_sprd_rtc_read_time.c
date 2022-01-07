
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct sprd_rtc {int valid; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int SPRD_RTC_TIME ;
 struct sprd_rtc* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;
 int sprd_rtc_get_secs (struct sprd_rtc*,int ,int *) ;

__attribute__((used)) static int sprd_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct sprd_rtc *rtc = dev_get_drvdata(dev);
 time64_t secs;
 int ret;

 if (!rtc->valid) {
  dev_warn(dev, "RTC values are invalid\n");
  return -EINVAL;
 }

 ret = sprd_rtc_get_secs(rtc, SPRD_RTC_TIME, &secs);
 if (ret)
  return ret;

 rtc_time64_to_tm(secs, tm);
 return 0;
}
