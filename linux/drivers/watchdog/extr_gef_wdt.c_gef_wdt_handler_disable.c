
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEF_WDC_ENABLED_TRUE ;
 int GEF_WDC_ENABLE_SHIFT ;
 scalar_t__ gef_wdt_toggle_wdc (int ,int ) ;
 int pr_notice (char*) ;

__attribute__((used)) static void gef_wdt_handler_disable(void)
{
 if (gef_wdt_toggle_wdc(GEF_WDC_ENABLED_TRUE,
       GEF_WDC_ENABLE_SHIFT))
  pr_notice("watchdog deactivated\n");
}
