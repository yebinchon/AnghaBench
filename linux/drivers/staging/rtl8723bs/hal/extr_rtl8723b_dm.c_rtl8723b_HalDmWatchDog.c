
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hal_com_data {int odmpriv; } ;
struct adapter {int hw_init_completed; int mlmepriv; } ;
struct TYPE_2__ {int bFwCurrentInPSMode; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HW_VAR_FWLPS_RF_ON ;
 int ODM_CMNINFO_BT_ENABLED ;
 int ODM_CMNINFO_LINK ;
 int ODM_CMNINFO_STATION_STATE ;
 int ODM_CmnInfoUpdate (int *,int ,int) ;
 int ODM_DMWatchdog (int *) ;
 int WIFI_STATION_STATE ;
 TYPE_1__* adapter_to_pwrctl (struct adapter*) ;
 scalar_t__ check_fwstate (int *,int ) ;
 int dm_CheckStatistics (struct adapter*) ;
 int hal_btcoex_IsBtDisabled (struct adapter*) ;
 int rtw_hal_check_rxfifo_full (struct adapter*) ;
 int rtw_hal_get_hwreg (struct adapter*,int ,int*) ;
 scalar_t__ rtw_linked_check (struct adapter*) ;

void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
{
 bool bFwCurrentInPSMode = 0;
 bool bFwPSAwake = 1;
 u8 hw_init_completed = 0;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);

 hw_init_completed = Adapter->hw_init_completed;

 if (hw_init_completed == 0)
  goto skip_dm;

 bFwCurrentInPSMode = adapter_to_pwrctl(Adapter)->bFwCurrentInPSMode;
 rtw_hal_get_hwreg(Adapter, HW_VAR_FWLPS_RF_ON, (u8 *)(&bFwPSAwake));

 if (
  (hw_init_completed == 1) &&
  ((!bFwCurrentInPSMode) && bFwPSAwake)
 ) {



  dm_CheckStatistics(Adapter);
  rtw_hal_check_rxfifo_full(Adapter);
 }


 if (hw_init_completed == 1) {
  u8 bLinked = 0;
  u8 bsta_state = 0;
  bool bBtDisabled = 1;

  if (rtw_linked_check(Adapter)) {
   bLinked = 1;
   if (check_fwstate(&Adapter->mlmepriv, WIFI_STATION_STATE))
    bsta_state = 1;
  }

  ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_LINK, bLinked);
  ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_STATION_STATE, bsta_state);



  bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);

  ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == 1)?0:1));

  ODM_DMWatchdog(&pHalData->odmpriv);
 }

skip_dm:
 return;
}
