
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct rtw_dm_info {scalar_t__ min_rssi; int damping; scalar_t__ damping_rssi; int igi_bitmap; scalar_t__ damping_cnt; int * fa_history; scalar_t__* igi_history; } ;


 int DIG_PERF_FA_TH_HIGH ;
 int DIG_PERF_FA_TH_LOW ;

__attribute__((used)) static bool
rtw_phy_dig_check_damping(struct rtw_dm_info *dm_info)
{
 u16 fa_lo = DIG_PERF_FA_TH_LOW;
 u16 fa_hi = DIG_PERF_FA_TH_HIGH;
 u16 *fa_history;
 u8 *igi_history;
 u8 damping_rssi;
 u8 min_rssi;
 u8 diff;
 u8 igi_bitmap;
 bool damping = 0;

 min_rssi = dm_info->min_rssi;
 if (dm_info->damping) {
  damping_rssi = dm_info->damping_rssi;
  diff = min_rssi > damping_rssi ? min_rssi - damping_rssi :
       damping_rssi - min_rssi;
  if (diff > 3 || dm_info->damping_cnt++ > 20) {
   dm_info->damping = 0;
   return 0;
  }

  return 1;
 }

 igi_history = dm_info->igi_history;
 fa_history = dm_info->fa_history;
 igi_bitmap = dm_info->igi_bitmap & 0xf;
 switch (igi_bitmap) {
 case 5:

  if (igi_history[0] > igi_history[1] &&
      igi_history[2] > igi_history[3] &&
      igi_history[0] - igi_history[1] >= 2 &&
      igi_history[2] - igi_history[3] >= 2 &&
      fa_history[0] > fa_hi && fa_history[1] < fa_lo &&
      fa_history[2] > fa_hi && fa_history[3] < fa_lo)
   damping = 1;
  break;
 case 9:

  if (igi_history[0] > igi_history[1] &&
      igi_history[3] > igi_history[2] &&
      igi_history[0] - igi_history[1] >= 4 &&
      igi_history[3] - igi_history[2] >= 2 &&
      fa_history[0] > fa_hi && fa_history[1] < fa_lo &&
      fa_history[2] < fa_lo && fa_history[3] > fa_hi)
   damping = 1;
  break;
 default:
  return 0;
 }

 if (damping) {
  dm_info->damping = 1;
  dm_info->damping_cnt = 0;
  dm_info->damping_rssi = min_rssi;
 }

 return damping;
}
