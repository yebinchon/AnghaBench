
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_wdt {int wdd; } ;


 int watchdog_get_drvdata (int *) ;

__attribute__((used)) static inline bool __mei_wdt_is_registered(struct mei_wdt *wdt)
{
 return !!watchdog_get_drvdata(&wdt->wdd);
}
