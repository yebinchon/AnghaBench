
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {unsigned long long clkrate; int lock; scalar_t__ ioaddr; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ LPC_LPT_LSB_OFF ;
 scalar_t__ LPC_LPT_MSB_OFF ;
 scalar_t__ LPC_LPT_START_OFF ;
 struct st_rtc* dev_get_drvdata (struct device*) ;
 unsigned long long rtc_tm_to_time64 (struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int st_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct st_rtc *rtc = dev_get_drvdata(dev);
 unsigned long long lpt, secs;
 unsigned long flags;

 secs = rtc_tm_to_time64(tm);

 lpt = (unsigned long long)secs * rtc->clkrate;

 spin_lock_irqsave(&rtc->lock, flags);

 writel_relaxed(lpt >> 32, rtc->ioaddr + LPC_LPT_MSB_OFF);
 writel_relaxed(lpt, rtc->ioaddr + LPC_LPT_LSB_OFF);
 writel_relaxed(1, rtc->ioaddr + LPC_LPT_START_OFF);

 spin_unlock_irqrestore(&rtc->lock, flags);

 return 0;
}
