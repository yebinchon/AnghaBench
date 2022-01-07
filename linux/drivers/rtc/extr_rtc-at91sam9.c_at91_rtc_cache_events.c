
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sam9_rtc {int events; } ;
typedef int irqreturn_t ;


 int AT91_RTT_ALMIEN ;
 int AT91_RTT_ALMS ;
 int AT91_RTT_RTTINC ;
 int AT91_RTT_RTTINCIEN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MR ;
 int RTC_AF ;
 int RTC_IRQF ;
 int RTC_UF ;
 int SR ;
 int rtt_readl (struct sam9_rtc*,int ) ;

__attribute__((used)) static irqreturn_t at91_rtc_cache_events(struct sam9_rtc *rtc)
{
 u32 sr, mr;




 mr = rtt_readl(rtc, MR) & (AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN);
 sr = rtt_readl(rtc, SR) & (mr >> 16);
 if (!sr)
  return IRQ_NONE;


 if (sr & AT91_RTT_ALMS)
  rtc->events |= (RTC_AF | RTC_IRQF);


 if (sr & AT91_RTT_RTTINC)
  rtc->events |= (RTC_UF | RTC_IRQF);

 return IRQ_HANDLED;
}
