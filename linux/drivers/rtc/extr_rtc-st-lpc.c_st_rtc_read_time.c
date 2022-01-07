
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {int clkrate; int lock; scalar_t__ ioaddr; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ LPC_LPT_LSB_OFF ;
 scalar_t__ LPC_LPT_MSB_OFF ;
 struct st_rtc* dev_get_drvdata (struct device*) ;
 int do_div (unsigned long long,int ) ;
 unsigned long readl_relaxed (scalar_t__) ;
 int rtc_time64_to_tm (unsigned long long,struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int st_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct st_rtc *rtc = dev_get_drvdata(dev);
 unsigned long lpt_lsb, lpt_msb;
 unsigned long long lpt;
 unsigned long flags;

 spin_lock_irqsave(&rtc->lock, flags);

 do {
  lpt_msb = readl_relaxed(rtc->ioaddr + LPC_LPT_MSB_OFF);
  lpt_lsb = readl_relaxed(rtc->ioaddr + LPC_LPT_LSB_OFF);
 } while (readl_relaxed(rtc->ioaddr + LPC_LPT_MSB_OFF) != lpt_msb);

 spin_unlock_irqrestore(&rtc->lock, flags);

 lpt = ((unsigned long long)lpt_msb << 32) | lpt_lsb;
 do_div(lpt, rtc->clkrate);
 rtc_time64_to_tm(lpt, tm);

 return 0;
}
