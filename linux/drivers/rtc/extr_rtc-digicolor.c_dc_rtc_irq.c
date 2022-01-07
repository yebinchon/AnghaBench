
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_rtc {int rtc_dev; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 scalar_t__ DC_RTC_INTFLAG_CLEAR ;
 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_update_irq (int ,int,int) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t dc_rtc_irq(int irq, void *dev_id)
{
 struct dc_rtc *rtc = dev_id;

 writeb_relaxed(1, rtc->regs + DC_RTC_INTFLAG_CLEAR);
 rtc_update_irq(rtc->rtc_dev, 1, RTC_AF | RTC_IRQF);

 return IRQ_HANDLED;
}
