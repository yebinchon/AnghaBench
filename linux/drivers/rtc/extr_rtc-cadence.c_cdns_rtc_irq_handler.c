
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdns_rtc {int rtc_dev; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int CDNS_RTC_AEI_ALRM ;
 scalar_t__ CDNS_RTC_EFLR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct cdns_rtc* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t cdns_rtc_irq_handler(int irq, void *id)
{
 struct device *dev = id;
 struct cdns_rtc *crtc = dev_get_drvdata(dev);


 if (!(readl(crtc->regs + CDNS_RTC_EFLR) & CDNS_RTC_AEI_ALRM))
  return IRQ_NONE;

 rtc_update_irq(crtc->rtc_dev, 1, RTC_IRQF | RTC_AF);
 return IRQ_HANDLED;
}
