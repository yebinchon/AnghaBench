
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct dc_rtc {int dummy; } ;


 int dc_rtc_write (struct dc_rtc*,int ) ;
 struct dc_rtc* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int dc_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct dc_rtc *rtc = dev_get_drvdata(dev);

 return dc_rtc_write(rtc, rtc_tm_to_time64(tm));
}
