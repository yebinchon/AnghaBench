
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_wdt {int wdd; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SPRD_WDT_INT_CLEAR_BIT ;
 scalar_t__ SPRD_WDT_INT_CLR ;
 int sprd_wdt_lock (scalar_t__) ;
 int sprd_wdt_unlock (scalar_t__) ;
 int watchdog_notify_pretimeout (int *) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t sprd_wdt_isr(int irq, void *dev_id)
{
 struct sprd_wdt *wdt = (struct sprd_wdt *)dev_id;

 sprd_wdt_unlock(wdt->base);
 writel_relaxed(SPRD_WDT_INT_CLEAR_BIT, wdt->base + SPRD_WDT_INT_CLR);
 sprd_wdt_lock(wdt->base);
 watchdog_notify_pretimeout(&wdt->wdd);
 return IRQ_HANDLED;
}
