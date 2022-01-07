
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {int nss; } ;
struct rtw_efuse {TYPE_3__ hw_cap; } ;
struct rtw_dev {struct rtw_efuse efuse; } ;
struct TYPE_4__ {int tx_mcs_map; } ;
struct TYPE_5__ {TYPE_1__ vht_mcs; } ;
struct ieee80211_sta {TYPE_2__ vht_cap; } ;


 int DESC_RATEVHT1SS_MCS7 ;
 int DESC_RATEVHT1SS_MCS8 ;
 int DESC_RATEVHT1SS_MCS9 ;
 int DESC_RATEVHT2SS_MCS7 ;
 int DESC_RATEVHT2SS_MCS8 ;
 int DESC_RATEVHT2SS_MCS9 ;



 int le16_to_cpu (int ) ;

__attribute__((used)) static u8 get_highest_vht_tx_rate(struct rtw_dev *rtwdev,
      struct ieee80211_sta *sta)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;
 u8 rate;
 u16 tx_mcs_map;

 tx_mcs_map = le16_to_cpu(sta->vht_cap.vht_mcs.tx_mcs_map);
 if (efuse->hw_cap.nss == 1) {
  switch (tx_mcs_map & 0x3) {
  case 130:
   rate = DESC_RATEVHT1SS_MCS7;
   break;
  case 129:
   rate = DESC_RATEVHT1SS_MCS8;
   break;
  default:
  case 128:
   rate = DESC_RATEVHT1SS_MCS9;
   break;
  }
 } else if (efuse->hw_cap.nss >= 2) {
  switch ((tx_mcs_map & 0xc) >> 2) {
  case 130:
   rate = DESC_RATEVHT2SS_MCS7;
   break;
  case 129:
   rate = DESC_RATEVHT2SS_MCS8;
   break;
  default:
  case 128:
   rate = DESC_RATEVHT2SS_MCS9;
   break;
  }
 } else {
  rate = DESC_RATEVHT1SS_MCS9;
 }

 return rate;
}
