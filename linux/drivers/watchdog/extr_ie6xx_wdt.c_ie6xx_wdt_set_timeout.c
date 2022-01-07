
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u64 ;
typedef int u32 ;
struct watchdog_device {unsigned int timeout; } ;
struct TYPE_2__ {int unlock_sequence; scalar_t__ sch_wdtba; } ;


 scalar_t__ PV1 ;
 scalar_t__ PV2 ;
 scalar_t__ RR1 ;
 scalar_t__ WDTCR ;
 int WDT_RELOAD ;
 int WDT_TOUT ;
 TYPE_1__ ie6xx_wdt_data ;
 int ie6xx_wdt_unlock_registers () ;
 int outb (int,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int resetmode ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ie6xx_wdt_set_timeout(struct watchdog_device *wdd, unsigned int t)
{
 u32 preload;
 u64 clock;
 u8 wdtcr;


 clock = 33000000;

 preload = (t * clock) >> 15;




 preload -= 1;

 spin_lock(&ie6xx_wdt_data.unlock_sequence);


 wdtcr = resetmode & 0x38;
 outb(wdtcr, ie6xx_wdt_data.sch_wdtba + WDTCR);

 ie6xx_wdt_unlock_registers();
 outl(0, ie6xx_wdt_data.sch_wdtba + PV1);

 ie6xx_wdt_unlock_registers();
 outl(preload, ie6xx_wdt_data.sch_wdtba + PV2);

 ie6xx_wdt_unlock_registers();
 outb(WDT_RELOAD | WDT_TOUT, ie6xx_wdt_data.sch_wdtba + RR1);

 spin_unlock(&ie6xx_wdt_data.unlock_sequence);

 wdd->timeout = t;
 return 0;
}
