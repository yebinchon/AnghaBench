
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int periodic_freq; int rtc_dev; scalar_t__ regbase; } ;


 int PF_COUNT ;
 int PF_HP ;
 scalar_t__ RCR2 ;
 unsigned int RCR2_PEF ;
 int RTC_IRQF ;
 int RTC_PF ;
 unsigned int readb (scalar_t__) ;
 int rtc_update_irq (int ,int,int) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int __sh_rtc_periodic(struct sh_rtc *rtc)
{
 unsigned int tmp, pending;

 tmp = readb(rtc->regbase + RCR2);
 pending = tmp & RCR2_PEF;
 tmp &= ~RCR2_PEF;
 writeb(tmp, rtc->regbase + RCR2);

 if (!pending)
  return 0;


 if ((rtc->periodic_freq & PF_HP) && (rtc->periodic_freq & PF_COUNT))
  rtc->periodic_freq &= ~PF_COUNT;
 else {
  if (rtc->periodic_freq & PF_HP)
   rtc->periodic_freq |= PF_COUNT;
  rtc_update_irq(rtc->rtc_dev, 1, RTC_PF | RTC_IRQF);
 }

 return pending;
}
