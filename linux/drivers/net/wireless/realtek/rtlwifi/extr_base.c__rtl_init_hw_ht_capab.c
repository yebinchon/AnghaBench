
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ supp_phymode_switch; } ;
struct TYPE_4__ {scalar_t__ disable_amsdu_8k; } ;
struct rtl_phy {int dummy; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ rtlhal; struct rtl_phy phy; } ;
struct TYPE_6__ {int* rx_mask; void* rx_highest; int tx_params; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; TYPE_3__ mcs; int ampdu_density; int ampdu_factor; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_DMESG ;
 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_MAX_AMPDU_64K ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MPDU_DENSITY_16 ;
 int MAX_BIT_RATE_40MHZ_MCS15 ;
 int MAX_BIT_RATE_40MHZ_MCS7 ;
 scalar_t__ RF_1T1R ;
 scalar_t__ RF_1T2R ;
 scalar_t__ RF_2T2R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 void* cpu_to_le16 (int ) ;
 scalar_t__ get_rf_type (struct rtl_phy*) ;
 int pr_info (char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_init_hw_ht_capab(struct ieee80211_hw *hw,
      struct ieee80211_sta_ht_cap *ht_cap)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 ht_cap->ht_supported = 1;
 ht_cap->cap = IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
     IEEE80211_HT_CAP_SGI_40 |
     IEEE80211_HT_CAP_SGI_20 |
     IEEE80211_HT_CAP_DSSSCCK40 | IEEE80211_HT_CAP_MAX_AMSDU;

 if (rtlpriv->rtlhal.disable_amsdu_8k)
  ht_cap->cap &= ~IEEE80211_HT_CAP_MAX_AMSDU;





 ht_cap->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;


 ht_cap->ampdu_density = IEEE80211_HT_MPDU_DENSITY_16;

 ht_cap->mcs.tx_params = IEEE80211_HT_MCS_TX_DEFINED;
 if (rtlpriv->dm.supp_phymode_switch) {
  pr_info("Support phy mode switch\n");

  ht_cap->mcs.rx_mask[0] = 0xFF;
  ht_cap->mcs.rx_mask[1] = 0xFF;
  ht_cap->mcs.rx_mask[4] = 0x01;

  ht_cap->mcs.rx_highest = cpu_to_le16(MAX_BIT_RATE_40MHZ_MCS15);
 } else {
  if (get_rf_type(rtlphy) == RF_1T2R ||
      get_rf_type(rtlphy) == RF_2T2R) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG,
     "1T2R or 2T2R\n");
   ht_cap->mcs.rx_mask[0] = 0xFF;
   ht_cap->mcs.rx_mask[1] = 0xFF;
   ht_cap->mcs.rx_mask[4] = 0x01;

   ht_cap->mcs.rx_highest =
     cpu_to_le16(MAX_BIT_RATE_40MHZ_MCS15);
  } else if (get_rf_type(rtlphy) == RF_1T1R) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_DMESG, "1T1R\n");

   ht_cap->mcs.rx_mask[0] = 0xFF;
   ht_cap->mcs.rx_mask[1] = 0x00;
   ht_cap->mcs.rx_mask[4] = 0x01;

   ht_cap->mcs.rx_highest =
     cpu_to_le16(MAX_BIT_RATE_40MHZ_MCS7);
  }
 }
}
