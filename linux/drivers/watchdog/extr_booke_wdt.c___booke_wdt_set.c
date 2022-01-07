
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;


 int SPRN_TCR ;
 int WDTP (int ) ;
 int WDTP_MASK ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 int sec_to_period (int ) ;

__attribute__((used)) static void __booke_wdt_set(void *data)
{
 u32 val;
 struct watchdog_device *wdog = data;

 val = mfspr(SPRN_TCR);
 val &= ~WDTP_MASK;
 val |= WDTP(sec_to_period(wdog->timeout));

 mtspr(SPRN_TCR, val);
}
