
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_rtc_drv {unsigned long overflow_rtc; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 unsigned long BITS_PER_LONG ;
 int RTC_CN ;
 unsigned long RTC_SHIFT ;
 int cpu_relax () ;
 struct sirfsoc_rtc_drv* dev_get_drvdata (struct device*) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 unsigned long sirfsoc_rtc_readl (struct sirfsoc_rtc_drv*,int ) ;

__attribute__((used)) static int sirfsoc_rtc_read_time(struct device *dev,
  struct rtc_time *tm)
{
 unsigned long tmp_rtc = 0;
 struct sirfsoc_rtc_drv *rtcdrv;
 rtcdrv = dev_get_drvdata(dev);





 do {
  tmp_rtc = sirfsoc_rtc_readl(rtcdrv, RTC_CN);
  cpu_relax();
 } while (tmp_rtc != sirfsoc_rtc_readl(rtcdrv, RTC_CN));

 rtc_time_to_tm(rtcdrv->overflow_rtc << (BITS_PER_LONG - RTC_SHIFT) |
     tmp_rtc >> RTC_SHIFT, tm);
 return 0;
}
