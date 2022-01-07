
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sa1100_rtc {int rtsr; } ;
struct rtc_wkalrm {int enabled; int pending; } ;
struct device {int dummy; } ;


 int RTSR_AL ;
 int RTSR_ALE ;
 struct sa1100_rtc* dev_get_drvdata (struct device*) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static int sa1100_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 u32 rtsr;
 struct sa1100_rtc *info = dev_get_drvdata(dev);

 rtsr = readl_relaxed(info->rtsr);
 alrm->enabled = (rtsr & RTSR_ALE) ? 1 : 0;
 alrm->pending = (rtsr & RTSR_AL) ? 1 : 0;
 return 0;
}
