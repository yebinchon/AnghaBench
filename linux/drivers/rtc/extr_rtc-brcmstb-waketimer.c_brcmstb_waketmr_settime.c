
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct brcmstb_waketmr {scalar_t__ base; } ;


 scalar_t__ BRCMSTB_WKTMR_COUNTER ;
 struct brcmstb_waketmr* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int brcmstb_waketmr_settime(struct device *dev,
       struct rtc_time *tm)
{
 struct brcmstb_waketmr *timer = dev_get_drvdata(dev);
 time64_t sec;

 sec = rtc_tm_to_time64(tm);

 writel_relaxed(sec, timer->base + BRCMSTB_WKTMR_COUNTER);

 return 0;
}
