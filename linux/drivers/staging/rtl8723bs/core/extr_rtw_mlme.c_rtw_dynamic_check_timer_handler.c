
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct adapter {int hw_init_completed; int bDriverStopped; int bSurpriseRemoved; int net_closed; } ;
struct TYPE_2__ {int bFwCurrentInPSMode; } ;


 int DBG_871X (char*,int ,int) ;
 TYPE_1__* adapter_to_pwrctl (struct adapter*) ;
 int hal_btcoex_IsBtControlLps (struct adapter*) ;
 int hal_btcoex_IsBtDisabled (struct adapter*) ;
 scalar_t__ is_primary_adapter (struct adapter*) ;
 int linked_status_chk (struct adapter*) ;
 int rtw_auto_scan_handler (struct adapter*) ;
 int rtw_dynamic_chk_wk_cmd (struct adapter*) ;
 int rtw_hal_dm_watchdog_in_lps (struct adapter*) ;
 scalar_t__ traffic_status_watchdog (struct adapter*,int) ;

void rtw_dynamic_check_timer_handler(struct adapter *adapter)
{
 if (!adapter)
  return;

 if (adapter->hw_init_completed == 0)
  return;

 if ((adapter->bDriverStopped == 1) || (adapter->bSurpriseRemoved == 1))
  return;

 if (adapter->net_closed == 1)
  return;

 if (is_primary_adapter(adapter))
  DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", hal_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));

 if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == 1)
  && (hal_btcoex_IsBtControlLps(adapter) == 0)
  ) {
  u8 bEnterPS;

  linked_status_chk(adapter);

  bEnterPS = traffic_status_watchdog(adapter, 1);
  if (bEnterPS) {

   rtw_hal_dm_watchdog_in_lps(adapter);
  } else {

  }

 } else {
  if (is_primary_adapter(adapter)) {
   rtw_dynamic_chk_wk_cmd(adapter);
  }
 }


 rtw_auto_scan_handler(adapter);
}
