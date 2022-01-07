
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int RTC_RTAR ;
 int RTC_RTSR ;
 int RTC_RTSR_ALE ;
 int dev_dbg (struct device*,char*,int,struct rtc_time*) ;
 int readl (int ) ;
 int rtc_time_to_tm (int,struct rtc_time*) ;

__attribute__((used)) static int puv3_rtc_getalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct rtc_time *alm_tm = &alrm->time;

 rtc_time_to_tm(readl(RTC_RTAR), alm_tm);

 alrm->enabled = readl(RTC_RTSR) & RTC_RTSR_ALE;

 dev_dbg(dev, "read alarm: %d, %ptRr\n", alrm->enabled, alm_tm);

 return 0;
}
