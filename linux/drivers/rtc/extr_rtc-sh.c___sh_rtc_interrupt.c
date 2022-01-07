
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int periodic_freq; int rtc_dev; scalar_t__ regbase; } ;


 int PF_OXS ;
 scalar_t__ RCR1 ;
 unsigned int RCR1_CF ;
 int RTC_IRQF ;
 int RTC_UF ;
 unsigned int readb (scalar_t__) ;
 int rtc_update_irq (int ,int,int) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int __sh_rtc_interrupt(struct sh_rtc *rtc)
{
 unsigned int tmp, pending;

 tmp = readb(rtc->regbase + RCR1);
 pending = tmp & RCR1_CF;
 tmp &= ~RCR1_CF;
 writeb(tmp, rtc->regbase + RCR1);


 if (pending && rtc->periodic_freq & PF_OXS)
  rtc_update_irq(rtc->rtc_dev, 1, RTC_UF | RTC_IRQF);

 return pending;
}
