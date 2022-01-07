
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orion_watchdog {int wdt; scalar_t__ reg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int TIMER1_STATUS_BIT ;
 scalar_t__ TIMER_A370_STATUS ;
 int atomic_io_modify (scalar_t__,int ,int ) ;
 int watchdog_notify_pretimeout (int *) ;

__attribute__((used)) static irqreturn_t orion_wdt_pre_irq(int irq, void *devid)
{
 struct orion_watchdog *dev = devid;

 atomic_io_modify(dev->reg + TIMER_A370_STATUS,
    TIMER1_STATUS_BIT, 0);
 watchdog_notify_pretimeout(&dev->wdt);
 return IRQ_HANDLED;
}
