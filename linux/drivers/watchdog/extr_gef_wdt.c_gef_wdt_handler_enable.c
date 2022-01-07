
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEF_WDC_ENABLED_FALSE ;
 int GEF_WDC_ENABLE_SHIFT ;
 int gef_wdt_service () ;
 scalar_t__ gef_wdt_toggle_wdc (int ,int ) ;
 int pr_notice (char*) ;

__attribute__((used)) static void gef_wdt_handler_enable(void)
{
 if (gef_wdt_toggle_wdc(GEF_WDC_ENABLED_FALSE,
       GEF_WDC_ENABLE_SHIFT)) {
  gef_wdt_service();
  pr_notice("watchdog activated\n");
 }
}
