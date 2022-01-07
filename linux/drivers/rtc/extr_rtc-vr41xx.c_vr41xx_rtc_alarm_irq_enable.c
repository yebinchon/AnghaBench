
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int aie_irq ;
 int alarm_enabled ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int vr41xx_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 spin_lock_irq(&rtc_lock);
 if (enabled) {
  if (!alarm_enabled) {
   enable_irq(aie_irq);
   alarm_enabled = 1;
  }
 } else {
  if (alarm_enabled) {
   disable_irq(aie_irq);
   alarm_enabled = 0;
  }
 }
 spin_unlock_irq(&rtc_lock);
 return 0;
}
