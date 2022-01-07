
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_rtc {int lock; } ;
struct device {int dummy; } ;


 int RTSR_RDALE1 ;
 struct pxa_rtc* dev_get_drvdata (struct device*) ;
 int rtsr_clear_bits (struct pxa_rtc*,int ) ;
 int rtsr_set_bits (struct pxa_rtc*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int pxa_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct pxa_rtc *pxa_rtc = dev_get_drvdata(dev);

 spin_lock_irq(&pxa_rtc->lock);

 if (enabled)
  rtsr_set_bits(pxa_rtc, RTSR_RDALE1);
 else
  rtsr_clear_bits(pxa_rtc, RTSR_RDALE1);

 spin_unlock_irq(&pxa_rtc->lock);
 return 0;
}
