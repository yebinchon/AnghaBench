
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MV64x60_WDC_ENABLED_TRUE ;
 int MV64x60_WDC_SERVICE_SHIFT ;
 int mv64x60_wdt_toggle_wdc (int ,int ) ;

__attribute__((used)) static void mv64x60_wdt_service(void)
{
 mv64x60_wdt_toggle_wdc(MV64x60_WDC_ENABLED_TRUE,
          MV64x60_WDC_SERVICE_SHIFT);
}
