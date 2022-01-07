
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ssb_extif {int dummy; } ;


 int SSB_EXTIF_WATCHDOG ;
 scalar_t__ SSB_EXTIF_WATCHDOG_MAX_TIMER ;
 int extif_write32 (struct ssb_extif*,int ,scalar_t__) ;

u32 ssb_extif_watchdog_timer_set(struct ssb_extif *extif, u32 ticks)
{
 if (ticks > SSB_EXTIF_WATCHDOG_MAX_TIMER)
  ticks = SSB_EXTIF_WATCHDOG_MAX_TIMER;
 extif_write32(extif, SSB_EXTIF_WATCHDOG, ticks);

 return ticks;
}
