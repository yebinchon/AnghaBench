
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bw; int nss; } ;
struct rtw_efuse {TYPE_1__ hw_cap; } ;
struct rtw_dev {struct rtw_efuse efuse; } ;
struct TYPE_4__ {int* rx_mask; void* rx_highest; int tx_params; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; TYPE_2__ mcs; int ampdu_density; int ampdu_factor; } ;


 int BIT (int ) ;
 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_LDPC_CODING ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_HT_CAP_RX_STBC_SHIFT ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MPDU_DENSITY_16 ;
 int RTW_CHANNEL_WIDTH_40 ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void rtw_init_ht_cap(struct rtw_dev *rtwdev,
       struct ieee80211_sta_ht_cap *ht_cap)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;

 ht_cap->ht_supported = 1;
 ht_cap->cap = 0;
 ht_cap->cap |= IEEE80211_HT_CAP_SGI_20 |
   IEEE80211_HT_CAP_MAX_AMSDU |
   IEEE80211_HT_CAP_LDPC_CODING |
   (1 << IEEE80211_HT_CAP_RX_STBC_SHIFT);
 if (efuse->hw_cap.bw & BIT(RTW_CHANNEL_WIDTH_40))
  ht_cap->cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
    IEEE80211_HT_CAP_DSSSCCK40 |
    IEEE80211_HT_CAP_SGI_40;
 ht_cap->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
 ht_cap->ampdu_density = IEEE80211_HT_MPDU_DENSITY_16;
 ht_cap->mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
 if (efuse->hw_cap.nss > 1) {
  ht_cap->mcs.rx_mask[0] = 0xFF;
  ht_cap->mcs.rx_mask[1] = 0xFF;
  ht_cap->mcs.rx_mask[4] = 0x01;
  ht_cap->mcs.rx_highest = cpu_to_le16(300);
 } else {
  ht_cap->mcs.rx_mask[0] = 0xFF;
  ht_cap->mcs.rx_mask[1] = 0x00;
  ht_cap->mcs.rx_mask[4] = 0x01;
  ht_cap->mcs.rx_highest = cpu_to_le16(150);
 }
}
