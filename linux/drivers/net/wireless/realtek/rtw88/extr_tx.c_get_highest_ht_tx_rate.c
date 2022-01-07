
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ rf_type; } ;
struct rtw_dev {TYPE_1__ hal; } ;
struct TYPE_5__ {scalar_t__* rx_mask; } ;
struct TYPE_6__ {TYPE_2__ mcs; } ;
struct ieee80211_sta {TYPE_3__ ht_cap; } ;


 int DESC_RATEMCS15 ;
 int DESC_RATEMCS7 ;
 scalar_t__ RF_2T2R ;

__attribute__((used)) static u8 get_highest_ht_tx_rate(struct rtw_dev *rtwdev,
     struct ieee80211_sta *sta)
{
 u8 rate;

 if (rtwdev->hal.rf_type == RF_2T2R && sta->ht_cap.mcs.rx_mask[1] != 0)
  rate = DESC_RATEMCS15;
 else
  rate = DESC_RATEMCS7;

 return rate;
}
