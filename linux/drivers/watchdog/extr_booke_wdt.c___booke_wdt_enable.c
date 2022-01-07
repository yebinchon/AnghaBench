
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;


 int SPRN_TCR ;
 int TCR_WIE ;
 int TCR_WRC (int ) ;
 int WDTP (int ) ;
 int WDTP_MASK ;
 int WRC_CHIP ;
 int __booke_wdt_ping (int *) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int sec_to_period (int ) ;

__attribute__((used)) static void __booke_wdt_enable(void *data)
{
 u32 val;
 struct watchdog_device *wdog = data;


 __booke_wdt_ping(((void*)0));
 val = mfspr(SPRN_TCR);
 val &= ~WDTP_MASK;
 val |= (TCR_WIE|TCR_WRC(WRC_CHIP)|WDTP(sec_to_period(wdog->timeout)));

 mtspr(SPRN_TCR, val);
}
