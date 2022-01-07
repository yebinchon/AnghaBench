
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {int rtc_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int rtc_update_irq (int ,int,int ) ;

__attribute__((used)) static irqreturn_t st_rtc_handler(int this_irq, void *data)
{
 struct st_rtc *rtc = (struct st_rtc *)data;

 rtc_update_irq(rtc->rtc_dev, 1, RTC_AF);

 return IRQ_HANDLED;
}
