
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* hal_dm_watchdog_in_lps ) (struct adapter*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
struct TYPE_4__ {int bFwCurrentInPSMode; } ;


 TYPE_2__* adapter_to_pwrctl (struct adapter*) ;
 int stub1 (struct adapter*) ;

void rtw_hal_dm_watchdog_in_lps(struct adapter *padapter)
{
 if (adapter_to_pwrctl(padapter)->bFwCurrentInPSMode == 1) {
  if (padapter->HalFunc.hal_dm_watchdog_in_lps)
   padapter->HalFunc.hal_dm_watchdog_in_lps(padapter);
 }
}
