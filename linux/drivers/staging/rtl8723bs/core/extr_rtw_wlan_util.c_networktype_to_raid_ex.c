
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sta_info {int wireless_mode; int ra_mask; int bw_mode; } ;
struct adapter {int dummy; } ;


 int CHANNEL_WIDTH_20 ;
 int HW_VAR_RF_TYPE ;
 scalar_t__ IsSupportedHT (int) ;
 scalar_t__ IsSupportedVHT (int) ;
 scalar_t__ RATEID_IDX_B ;
 scalar_t__ RATEID_IDX_BG ;
 scalar_t__ RATEID_IDX_BGN_20M_1SS_BN ;
 scalar_t__ RATEID_IDX_BGN_20M_2SS_BN ;
 scalar_t__ RATEID_IDX_BGN_40M_1SS ;
 scalar_t__ RATEID_IDX_BGN_40M_2SS ;
 scalar_t__ RATEID_IDX_G ;
 scalar_t__ RATEID_IDX_GN_N1SS ;
 scalar_t__ RATEID_IDX_GN_N2SS ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_2T2R ;
 int rtw_hal_get_hwreg (struct adapter*,int ,scalar_t__*) ;

u8 networktype_to_raid_ex(struct adapter *adapter, struct sta_info *psta)
{
 u8 raid, cur_rf_type, rf_type = RF_1T1R;

 rtw_hal_get_hwreg(adapter, HW_VAR_RF_TYPE, (u8 *)(&cur_rf_type));

 if (cur_rf_type == RF_1T1R) {
  rf_type = RF_1T1R;
 } else if (IsSupportedVHT(psta->wireless_mode)) {
  if (psta->ra_mask & 0xffc00000)
   rf_type = RF_2T2R;
 } else if (IsSupportedHT(psta->wireless_mode)) {
  if (psta->ra_mask & 0xfff00000)
   rf_type = RF_2T2R;
 }

 switch (psta->wireless_mode) {
 case 135:
  raid = RATEID_IDX_B;
  break;
 case 137:
 case 131:
  raid = RATEID_IDX_G;
  break;
 case 134:
  raid = RATEID_IDX_BG;
  break;
 case 129:
 case 128:
 case 136:
 case 130:
  if (rf_type == RF_2T2R)
   raid = RATEID_IDX_GN_N2SS;
  else
   raid = RATEID_IDX_GN_N1SS;
  break;
 case 132:
 case 133:
  if (psta->bw_mode == CHANNEL_WIDTH_20) {
   if (rf_type == RF_2T2R)
    raid = RATEID_IDX_BGN_20M_2SS_BN;
   else
    raid = RATEID_IDX_BGN_20M_1SS_BN;
  } else {
   if (rf_type == RF_2T2R)
    raid = RATEID_IDX_BGN_40M_2SS;
   else
    raid = RATEID_IDX_BGN_40M_1SS;
  }
  break;
 default:
  raid = RATEID_IDX_BGN_40M_2SS;
  break;
 }
 return raid;
}
