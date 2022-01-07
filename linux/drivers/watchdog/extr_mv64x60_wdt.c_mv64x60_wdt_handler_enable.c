
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MV64x60_WDC_ENABLED_FALSE ;
 int MV64x60_WDC_ENABLE_SHIFT ;
 int mv64x60_wdt_service () ;
 scalar_t__ mv64x60_wdt_toggle_wdc (int ,int ) ;
 int pr_notice (char*) ;

__attribute__((used)) static void mv64x60_wdt_handler_enable(void)
{
 if (mv64x60_wdt_toggle_wdc(MV64x60_WDC_ENABLED_FALSE,
       MV64x60_WDC_ENABLE_SHIFT)) {
  mv64x60_wdt_service();
  pr_notice("watchdog activated\n");
 }
}
