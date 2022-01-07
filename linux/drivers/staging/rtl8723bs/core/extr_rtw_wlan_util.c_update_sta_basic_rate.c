
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int bssratelen; int bssrateset; } ;


 scalar_t__ IsSupportedTxCCK (int ) ;
 int memcpy (int ,int ,int) ;
 int rtw_basic_rate_cck ;
 int rtw_basic_rate_ofdm ;

void update_sta_basic_rate(struct sta_info *psta, u8 wireless_mode)
{
 if (IsSupportedTxCCK(wireless_mode)) {

  memcpy(psta->bssrateset, rtw_basic_rate_cck, 4);
  psta->bssratelen = 4;
 } else {
  memcpy(psta->bssrateset, rtw_basic_rate_ofdm, 3);
  psta->bssratelen = 3;
 }
}
