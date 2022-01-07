
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct dc_rtc {int dummy; } ;


 int dc_rtc_read (struct dc_rtc*,unsigned long*) ;
 struct dc_rtc* dev_get_drvdata (struct device*) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int dc_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct dc_rtc *rtc = dev_get_drvdata(dev);
 unsigned long now;
 int ret;

 ret = dc_rtc_read(rtc, &now);
 if (ret < 0)
  return ret;
 rtc_time64_to_tm(now, tm);

 return 0;
}
