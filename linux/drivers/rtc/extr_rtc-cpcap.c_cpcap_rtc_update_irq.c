
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_rtc {int rtc_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_IRQF ;
 int RTC_UF ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t cpcap_rtc_update_irq(int irq, void *data)
{
 struct cpcap_rtc *rtc = data;

 rtc_update_irq(rtc->rtc_dev, 1, RTC_UF | RTC_IRQF);
 return IRQ_HANDLED;
}
