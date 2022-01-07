
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* IXP4XX_OSWE ;
 scalar_t__* IXP4XX_OSWK ;
 scalar_t__ IXP4XX_WDT_KEY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;

__attribute__((used)) static void wdt_disable(void)
{
 spin_lock(&wdt_lock);
 *IXP4XX_OSWK = IXP4XX_WDT_KEY;
 *IXP4XX_OSWE = 0;
 *IXP4XX_OSWK = 0;
 spin_unlock(&wdt_lock);
}
