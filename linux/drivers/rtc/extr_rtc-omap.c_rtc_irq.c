
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omap_rtc {int rtc; TYPE_1__* type; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;int (* unlock ) (struct omap_rtc*) ;} ;


 int IRQ_HANDLED ;
 int OMAP_RTC_STATUS_1S_EVENT ;
 int OMAP_RTC_STATUS_ALARM ;
 int OMAP_RTC_STATUS_REG ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 int rtc_read (struct omap_rtc*,int ) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int rtc_write (struct omap_rtc*,int ,int) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;

__attribute__((used)) static irqreturn_t rtc_irq(int irq, void *dev_id)
{
 struct omap_rtc *rtc = dev_id;
 unsigned long events = 0;
 u8 irq_data;

 irq_data = rtc_read(rtc, OMAP_RTC_STATUS_REG);


 if (irq_data & OMAP_RTC_STATUS_ALARM) {
  rtc->type->unlock(rtc);
  rtc_write(rtc, OMAP_RTC_STATUS_REG, OMAP_RTC_STATUS_ALARM);
  rtc->type->lock(rtc);
  events |= RTC_IRQF | RTC_AF;
 }


 if (irq_data & OMAP_RTC_STATUS_1S_EVENT)
  events |= RTC_IRQF | RTC_UF;

 rtc_update_irq(rtc->rtc, 1, events);

 return IRQ_HANDLED;
}
