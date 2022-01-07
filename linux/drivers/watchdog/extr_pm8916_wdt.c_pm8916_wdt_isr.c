
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8916_wdt {int wdev; scalar_t__ baseaddr; int regmap; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PMIC_WD_BARK_STS_BIT ;
 scalar_t__ PON_INT_RT_STS ;
 int regmap_read (int ,scalar_t__,int*) ;
 int watchdog_notify_pretimeout (int *) ;

__attribute__((used)) static irqreturn_t pm8916_wdt_isr(int irq, void *arg)
{
 struct pm8916_wdt *wdt = arg;
 int err, sts;

 err = regmap_read(wdt->regmap, wdt->baseaddr + PON_INT_RT_STS, &sts);
 if (err)
  return IRQ_HANDLED;

 if (sts & PMIC_WD_BARK_STS_BIT)
  watchdog_notify_pretimeout(&wdt->wdev);

 return IRQ_HANDLED;
}
