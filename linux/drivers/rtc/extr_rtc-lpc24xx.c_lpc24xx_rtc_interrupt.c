
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc24xx_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LPC24XX_ALARM_DISABLE ;
 int LPC24XX_AMR ;
 int LPC24XX_ILR ;
 int LPC24XX_RTCALF ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 int rtc_readl (struct lpc24xx_rtc*,int ) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int rtc_writel (struct lpc24xx_rtc*,int ,int) ;

__attribute__((used)) static irqreturn_t lpc24xx_rtc_interrupt(int irq, void *data)
{
 unsigned long events = RTC_IRQF;
 struct lpc24xx_rtc *rtc = data;
 u32 rtc_iir;


 rtc_iir = rtc_readl(rtc, LPC24XX_ILR);
 if (rtc_iir & LPC24XX_RTCALF) {
  events |= RTC_AF;
  rtc_writel(rtc, LPC24XX_AMR, LPC24XX_ALARM_DISABLE);
 }


 rtc_writel(rtc, LPC24XX_ILR, rtc_iir);
 rtc_update_irq(rtc->rtc, 1, events);

 return IRQ_HANDLED;
}
