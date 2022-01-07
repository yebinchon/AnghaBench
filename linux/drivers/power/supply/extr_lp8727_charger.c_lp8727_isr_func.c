
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8727_chg {int debounce_jiffies; int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t lp8727_isr_func(int irq, void *ptr)
{
 struct lp8727_chg *pchg = ptr;

 schedule_delayed_work(&pchg->work, pchg->debounce_jiffies);
 return IRQ_HANDLED;
}
