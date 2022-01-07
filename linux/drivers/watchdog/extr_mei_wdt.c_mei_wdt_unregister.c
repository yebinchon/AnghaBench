
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_wdt {int reg_lock; int wdd; } ;


 scalar_t__ __mei_wdt_is_registered (struct mei_wdt*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int watchdog_set_drvdata (int *,int *) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static void mei_wdt_unregister(struct mei_wdt *wdt)
{
 mutex_lock(&wdt->reg_lock);

 if (__mei_wdt_is_registered(wdt)) {
  watchdog_unregister_device(&wdt->wdd);
  watchdog_set_drvdata(&wdt->wdd, ((void*)0));
  memset(&wdt->wdd, 0, sizeof(wdt->wdd));
 }

 mutex_unlock(&wdt->reg_lock);
}
