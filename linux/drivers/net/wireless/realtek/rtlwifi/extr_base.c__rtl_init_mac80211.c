
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rtl_sta_info {int dummy; } ;
struct TYPE_6__ {int pattern_max_len; int pattern_min_len; int n_patterns; int flags; } ;
struct TYPE_4__ {int wo_wlan_mode; scalar_t__ fwctrl_lps; scalar_t__ swctrl_lps; } ;
struct rtl_priv {TYPE_3__ wowlan; TYPE_1__ psc; } ;
struct rtl_mac {struct ieee80211_supported_band* bands; } ;
struct rtl_hal {scalar_t__ macphymode; scalar_t__ bandset; scalar_t__ current_bandtype; } ;
struct rtl_efuse {int* dev_addr; } ;
struct ieee80211_supported_band {int vht_cap; int ht_cap; } ;
struct ieee80211_hw {int sta_data_size; TYPE_2__* wiphy; int max_rate_tries; int max_listen_interval; int extra_tx_headroom; int queues; } ;
struct TYPE_5__ {int interface_modes; int rts_threshold; TYPE_3__* wowlan; int flags; struct ieee80211_supported_band** bands; } ;


 int AC_MAX ;
 int AMPDU_AGGREGATION ;
 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ BAND_ON_5G ;
 scalar_t__ BAND_ON_BOTH ;
 int BIT (int ) ;
 int ETH_ALEN ;
 int MAX_LISTEN_INTERVAL ;
 int MAX_RATE_TRIES ;
 int MAX_SUPPORT_WOL_PATTERN_NUM ;
 int MAX_WOL_PATTERN_SIZE ;
 int MFP_CAPABLE ;
 int MIN_WOL_PATTERN_SIZE ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_P2P_CLIENT ;
 int NL80211_IFTYPE_P2P_GO ;
 int NL80211_IFTYPE_STATION ;
 int PS_NULLFUNC_STACK ;
 int REPORTS_TX_ACK_STATUS ;
 int RTL_TX_HEADER_SIZE ;
 int RX_INCLUDES_FCS ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int*) ;
 int SIGNAL_DBM ;
 scalar_t__ SINGLEMAC_SINGLEPHY ;
 int SUPPORTS_AMSDU_IN_AMPDU ;
 int SUPPORTS_DYNAMIC_PS ;
 int SUPPORTS_PS ;
 int SUPPORT_FAST_XMIT ;
 int WAKE_ON_MAGIC_PACKET ;
 int WAKE_ON_PATTERN_MATCH ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WIPHY_WOWLAN_MAGIC_PKT ;
 int _rtl_init_hw_ht_capab (struct ieee80211_hw*,int *) ;
 int _rtl_init_hw_vht_capab (struct ieee80211_hw*,int *) ;
 int get_random_bytes (int*,int) ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 scalar_t__ is_valid_ether_addr (int*) ;
 int memcpy (struct ieee80211_supported_band*,int *,int) ;
 int pr_err (char*,scalar_t__) ;
 int rtl_band_2ghz ;
 int rtl_band_5ghz ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_init_mac80211(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtlpriv);
 struct rtl_mac *rtlmac = rtl_mac(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct ieee80211_supported_band *sband;

 if (rtlhal->macphymode == SINGLEMAC_SINGLEPHY &&
     rtlhal->bandset == BAND_ON_BOTH) {


  sband = &(rtlmac->bands[NL80211_BAND_2GHZ]);



  memcpy(&(rtlmac->bands[NL80211_BAND_2GHZ]), &rtl_band_2ghz,
    sizeof(struct ieee80211_supported_band));


  _rtl_init_hw_ht_capab(hw, &sband->ht_cap);


  hw->wiphy->bands[NL80211_BAND_2GHZ] = sband;



  sband = &(rtlmac->bands[NL80211_BAND_5GHZ]);



  memcpy(&(rtlmac->bands[NL80211_BAND_5GHZ]), &rtl_band_5ghz,
    sizeof(struct ieee80211_supported_band));


  _rtl_init_hw_ht_capab(hw, &sband->ht_cap);

  _rtl_init_hw_vht_capab(hw, &sband->vht_cap);

  hw->wiphy->bands[NL80211_BAND_5GHZ] = sband;
 } else {
  if (rtlhal->current_bandtype == BAND_ON_2_4G) {

   sband = &(rtlmac->bands[NL80211_BAND_2GHZ]);



   memcpy(&(rtlmac->bands[NL80211_BAND_2GHZ]),
          &rtl_band_2ghz,
          sizeof(struct ieee80211_supported_band));


   _rtl_init_hw_ht_capab(hw, &sband->ht_cap);


   hw->wiphy->bands[NL80211_BAND_2GHZ] = sband;
  } else if (rtlhal->current_bandtype == BAND_ON_5G) {

   sband = &(rtlmac->bands[NL80211_BAND_5GHZ]);



   memcpy(&(rtlmac->bands[NL80211_BAND_5GHZ]),
          &rtl_band_5ghz,
          sizeof(struct ieee80211_supported_band));


   _rtl_init_hw_ht_capab(hw, &sband->ht_cap);

   _rtl_init_hw_vht_capab(hw, &sband->vht_cap);

   hw->wiphy->bands[NL80211_BAND_5GHZ] = sband;
  } else {
   pr_err("Err BAND %d\n",
          rtlhal->current_bandtype);
  }
 }

 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, RX_INCLUDES_FCS);
 ieee80211_hw_set(hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(hw, MFP_CAPABLE);
 ieee80211_hw_set(hw, REPORTS_TX_ACK_STATUS);
 ieee80211_hw_set(hw, SUPPORTS_AMSDU_IN_AMPDU);
 ieee80211_hw_set(hw, SUPPORT_FAST_XMIT);


 if (rtlpriv->psc.swctrl_lps) {
  ieee80211_hw_set(hw, SUPPORTS_PS);
  ieee80211_hw_set(hw, PS_NULLFUNC_STACK);
 }
 if (rtlpriv->psc.fwctrl_lps) {
  ieee80211_hw_set(hw, SUPPORTS_PS);
  ieee80211_hw_set(hw, SUPPORTS_DYNAMIC_PS);
 }
 hw->wiphy->interface_modes =
     BIT(NL80211_IFTYPE_AP) |
     BIT(NL80211_IFTYPE_STATION) |
     BIT(NL80211_IFTYPE_ADHOC) |
     BIT(NL80211_IFTYPE_MESH_POINT) |
     BIT(NL80211_IFTYPE_P2P_CLIENT) |
     BIT(NL80211_IFTYPE_P2P_GO);
 hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

 hw->wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;

 hw->wiphy->rts_threshold = 2347;

 hw->queues = AC_MAX;
 hw->extra_tx_headroom = RTL_TX_HEADER_SIZE;


 hw->max_listen_interval = MAX_LISTEN_INTERVAL;
 hw->max_rate_tries = MAX_RATE_TRIES;

 hw->sta_data_size = sizeof(struct rtl_sta_info);
 if (is_valid_ether_addr(rtlefuse->dev_addr)) {
  SET_IEEE80211_PERM_ADDR(hw, rtlefuse->dev_addr);
 } else {
  u8 rtlmac1[] = { 0x00, 0xe0, 0x4c, 0x81, 0x92, 0x00 };

  get_random_bytes((rtlmac1 + (ETH_ALEN - 1)), 1);
  SET_IEEE80211_PERM_ADDR(hw, rtlmac1);
 }
}
