
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {int lock; scalar_t__ ioaddr; } ;


 scalar_t__ LPC_LPA_LSB_OFF ;
 scalar_t__ LPC_LPA_MSB_OFF ;
 scalar_t__ LPC_LPA_START_OFF ;
 scalar_t__ LPC_WDT_OFF ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void st_rtc_set_hw_alarm(struct st_rtc *rtc,
    unsigned long msb, unsigned long lsb)
{
 unsigned long flags;

 spin_lock_irqsave(&rtc->lock, flags);

 writel_relaxed(1, rtc->ioaddr + LPC_WDT_OFF);

 writel_relaxed(msb, rtc->ioaddr + LPC_LPA_MSB_OFF);
 writel_relaxed(lsb, rtc->ioaddr + LPC_LPA_LSB_OFF);
 writel_relaxed(1, rtc->ioaddr + LPC_LPA_START_OFF);

 writel_relaxed(0, rtc->ioaddr + LPC_WDT_OFF);

 spin_unlock_irqrestore(&rtc->lock, flags);
}
