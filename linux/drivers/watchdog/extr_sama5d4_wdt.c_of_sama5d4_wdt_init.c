
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sama5d4_wdt {int mr; } ;
struct device_node {int dummy; } ;


 int AT91_WDT_WDDBGHLT ;
 int AT91_WDT_WDDIS ;
 int AT91_WDT_WDFIEN ;
 int AT91_WDT_WDIDLEHLT ;
 int AT91_WDT_WDRSTEN ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int of_sama5d4_wdt_init(struct device_node *np, struct sama5d4_wdt *wdt)
{
 const char *tmp;

 wdt->mr = AT91_WDT_WDDIS;

 if (!of_property_read_string(np, "atmel,watchdog-type", &tmp) &&
     !strcmp(tmp, "software"))
  wdt->mr |= AT91_WDT_WDFIEN;
 else
  wdt->mr |= AT91_WDT_WDRSTEN;

 if (of_property_read_bool(np, "atmel,idle-halt"))
  wdt->mr |= AT91_WDT_WDIDLEHLT;

 if (of_property_read_bool(np, "atmel,dbg-halt"))
  wdt->mr |= AT91_WDT_WDDBGHLT;

 return 0;
}
