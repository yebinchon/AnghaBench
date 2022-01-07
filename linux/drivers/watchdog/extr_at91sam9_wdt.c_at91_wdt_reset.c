
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91wdt {int dummy; } ;


 int AT91_WDT_CR ;
 int AT91_WDT_KEY ;
 int AT91_WDT_WDRSTT ;
 int wdt_write (struct at91wdt*,int ,int) ;

__attribute__((used)) static inline void at91_wdt_reset(struct at91wdt *wdt)
{
 wdt_write(wdt, AT91_WDT_CR, AT91_WDT_KEY | AT91_WDT_WDRSTT);
}
