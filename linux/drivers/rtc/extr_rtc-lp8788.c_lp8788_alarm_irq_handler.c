
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_rtc {int rdev; } ;
typedef int irqreturn_t ;


 int ALARM_IRQ_FLAG ;
 int IRQ_HANDLED ;
 int rtc_update_irq (int ,int,int ) ;

__attribute__((used)) static irqreturn_t lp8788_alarm_irq_handler(int irq, void *ptr)
{
 struct lp8788_rtc *rtc = ptr;

 rtc_update_irq(rtc->rdev, 1, ALARM_IRQ_FLAG);
 return IRQ_HANDLED;
}
