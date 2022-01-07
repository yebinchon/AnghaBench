
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_rtc {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int __sh_rtc_alarm (struct sh_rtc*) ;
 int __sh_rtc_interrupt (struct sh_rtc*) ;
 int __sh_rtc_periodic (struct sh_rtc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t sh_rtc_shared(int irq, void *dev_id)
{
 struct sh_rtc *rtc = dev_id;
 int ret;

 spin_lock(&rtc->lock);
 ret = __sh_rtc_interrupt(rtc);
 ret |= __sh_rtc_alarm(rtc);
 ret |= __sh_rtc_periodic(rtc);
 spin_unlock(&rtc->lock);

 return IRQ_RETVAL(ret);
}
