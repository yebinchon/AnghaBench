
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSC_RSTSTAT ;
 int WDIOF_CARDRESET ;
 int WDT_RST_CAUSE ;
 int rt_sysc_r32 (int ) ;

__attribute__((used)) static int rt288x_wdt_bootcause(void)
{
 if (rt_sysc_r32(SYSC_RSTSTAT) & WDT_RST_CAUSE)
  return WDIOF_CARDRESET;

 return 0;
}
