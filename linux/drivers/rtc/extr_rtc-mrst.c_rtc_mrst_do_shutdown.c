
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RTC_IRQMASK ;
 int mrst_irq_disable (int *,int ) ;
 int mrst_rtc ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void rtc_mrst_do_shutdown(void)
{
 spin_lock_irq(&rtc_lock);
 mrst_irq_disable(&mrst_rtc, RTC_IRQMASK);
 spin_unlock_irq(&rtc_lock);
}
