
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int bDisableSWChannelPlan; } ;
struct adapter {int dummy; } ;


 int EEPROM_CHANNEL_PLAN_BY_HW_MASK ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ rtw_is_channel_plan_valid (int) ;

u8 hal_com_config_channel_plan(
 struct adapter *padapter,
 u8 hw_channel_plan,
 u8 sw_channel_plan,
 u8 def_channel_plan,
 bool AutoLoadFail
)
{
 struct hal_com_data *pHalData;
 u8 chnlPlan;

 pHalData = GET_HAL_DATA(padapter);
 pHalData->bDisableSWChannelPlan = 0;
 chnlPlan = def_channel_plan;

 if (0xFF == hw_channel_plan)
  AutoLoadFail = 1;

 if (!AutoLoadFail) {
  u8 hw_chnlPlan;

  hw_chnlPlan = hw_channel_plan & (~EEPROM_CHANNEL_PLAN_BY_HW_MASK);
  if (rtw_is_channel_plan_valid(hw_chnlPlan)) {

   if (hw_channel_plan & EEPROM_CHANNEL_PLAN_BY_HW_MASK)
    pHalData->bDisableSWChannelPlan = 1;


   chnlPlan = hw_chnlPlan;
  }
 }

 if (
  (0 == pHalData->bDisableSWChannelPlan) &&
  rtw_is_channel_plan_valid(sw_channel_plan)
 )
  chnlPlan = sw_channel_plan;

 return chnlPlan;
}
