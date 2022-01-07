
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sam9_rtc {int lock; scalar_t__ suspended; } ;
typedef int irqreturn_t ;


 int AT91_RTT_ALMIEN ;
 int AT91_RTT_RTTINCIEN ;
 int MR ;
 int at91_rtc_cache_events (struct sam9_rtc*) ;
 int at91_rtc_flush_events (struct sam9_rtc*) ;
 int pm_system_wakeup () ;
 int rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t at91_rtc_interrupt(int irq, void *_rtc)
{
 struct sam9_rtc *rtc = _rtc;
 int ret;

 spin_lock(&rtc->lock);

 ret = at91_rtc_cache_events(rtc);


 if (rtc->suspended) {

  rtt_writel(rtc, MR,
      rtt_readl(rtc, MR) &
      ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN));

  pm_system_wakeup();
 } else {
  at91_rtc_flush_events(rtc);
 }

 spin_unlock(&rtc->lock);

 return ret;
}
