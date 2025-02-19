
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int start_time; int interval; int duration; int cnt; } ;
struct TYPE_5__ {int ct_window; int start_time; int interval; int duration; int cnt; } ;
struct wilc_join_bss_param {scalar_t__* ssid; scalar_t__ dtim_period; int* p_suites; int* akm_suites; scalar_t__* supp_rates; int ht_capable; int noa_enabled; int opp_enabled; int wmm_cap; int uapsd_cap; int mode_802_11i; int rsn_found; scalar_t__* rsn_cap; int rsn_grp_policy; TYPE_2__ opp_dis; TYPE_1__ opp_en; int idx; int tsf_lo; int bssid; int ch; int bss_type; void* cap_info; void* beacon_period; } ;
struct ieee80211_wmm_param_ie {int oui_subtype; int version; int qos_info; } ;
struct ieee80211_p2p_noa_attr {int oppps_ctwindow; TYPE_3__* desc; int index; } ;
struct cfg80211_crypto_settings {int cipher_group; int n_ciphers_pairwise; int* ciphers_pairwise; int n_akm_suites; int* akm_suites; } ;
struct cfg80211_bss_ies {int len; int data; int tsf; } ;
struct cfg80211_bss {int bssid; TYPE_4__* channel; int capability; int beacon_interval; int ies; } ;
typedef int noa_attr ;
struct TYPE_8__ {int center_freq; } ;
struct TYPE_7__ {int start_time; int interval; int duration; int count; } ;


 int BIT (int) ;
 int GFP_KERNEL ;
 scalar_t__ const IEEE80211_MAX_SSID_LEN ;
 int IEEE80211_P2P_ATTR_ABSENCE_NOTICE ;
 int IEEE80211_P2P_OPPPS_ENABLE_BIT ;
 int WILC_FW_BSS_TYPE_INFRA ;
 scalar_t__ const WILC_MAX_RATES_SUPPORTED ;
 int WLAN_EID_EXT_SUPP_RATES ;
 int WLAN_EID_HT_CAPABILITY ;
 int WLAN_EID_RSN ;
 int WLAN_EID_SSID ;
 int WLAN_EID_SUPP_RATES ;
 int WLAN_EID_TIM ;
 int WLAN_OUI_MICROSOFT ;
 int WLAN_OUI_TYPE_MICROSOFT_WMM ;
 int WLAN_OUI_TYPE_MICROSOFT_WPA ;
 scalar_t__* cfg80211_find_ie (int ,int ,int ) ;
 scalar_t__* cfg80211_find_vendor_ie (int ,int ,int ,int ) ;
 int cfg80211_get_p2p_attr (int ,int ,int ,scalar_t__*,int) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int ether_addr_copy (int ,int ) ;
 int ieee80211_frequency_to_channel (int ) ;
 struct wilc_join_bss_param* kzalloc (int,int ) ;
 int memcpy (scalar_t__*,scalar_t__ const*,scalar_t__ const) ;
 int memset (int*,int,int) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;

void *wilc_parse_join_bss_param(struct cfg80211_bss *bss,
    struct cfg80211_crypto_settings *crypto)
{
 struct wilc_join_bss_param *param;
 struct ieee80211_p2p_noa_attr noa_attr;
 u8 rates_len = 0;
 const u8 *tim_elm, *ssid_elm, *rates_ie, *supp_rates_ie;
 const u8 *ht_ie, *wpa_ie, *wmm_ie, *rsn_ie;
 int ret;
 const struct cfg80211_bss_ies *ies = rcu_dereference(bss->ies);

 param = kzalloc(sizeof(*param), GFP_KERNEL);
 if (!param)
  return ((void*)0);

 param->beacon_period = cpu_to_le16(bss->beacon_interval);
 param->cap_info = cpu_to_le16(bss->capability);
 param->bss_type = WILC_FW_BSS_TYPE_INFRA;
 param->ch = ieee80211_frequency_to_channel(bss->channel->center_freq);
 ether_addr_copy(param->bssid, bss->bssid);

 ssid_elm = cfg80211_find_ie(WLAN_EID_SSID, ies->data, ies->len);
 if (ssid_elm) {
  if (ssid_elm[1] <= IEEE80211_MAX_SSID_LEN)
   memcpy(param->ssid, ssid_elm + 2, ssid_elm[1]);
 }

 tim_elm = cfg80211_find_ie(WLAN_EID_TIM, ies->data, ies->len);
 if (tim_elm && tim_elm[1] >= 2)
  param->dtim_period = tim_elm[3];

 memset(param->p_suites, 0xFF, 3);
 memset(param->akm_suites, 0xFF, 3);

 rates_ie = cfg80211_find_ie(WLAN_EID_SUPP_RATES, ies->data, ies->len);
 if (rates_ie) {
  rates_len = rates_ie[1];
  param->supp_rates[0] = rates_len;
  memcpy(&param->supp_rates[1], rates_ie + 2, rates_len);
 }

 supp_rates_ie = cfg80211_find_ie(WLAN_EID_EXT_SUPP_RATES, ies->data,
      ies->len);
 if (supp_rates_ie) {
  if (supp_rates_ie[1] > (WILC_MAX_RATES_SUPPORTED - rates_len))
   param->supp_rates[0] = WILC_MAX_RATES_SUPPORTED;
  else
   param->supp_rates[0] += supp_rates_ie[1];

  memcpy(&param->supp_rates[rates_len + 1], supp_rates_ie + 2,
         (param->supp_rates[0] - rates_len));
 }

 ht_ie = cfg80211_find_ie(WLAN_EID_HT_CAPABILITY, ies->data, ies->len);
 if (ht_ie)
  param->ht_capable = 1;

 ret = cfg80211_get_p2p_attr(ies->data, ies->len,
        IEEE80211_P2P_ATTR_ABSENCE_NOTICE,
        (u8 *)&noa_attr, sizeof(noa_attr));
 if (ret > 0) {
  param->tsf_lo = cpu_to_le32(ies->tsf);
  param->noa_enabled = 1;
  param->idx = noa_attr.index;
  if (noa_attr.oppps_ctwindow & IEEE80211_P2P_OPPPS_ENABLE_BIT) {
   param->opp_enabled = 1;
   param->opp_en.ct_window = noa_attr.oppps_ctwindow;
   param->opp_en.cnt = noa_attr.desc[0].count;
   param->opp_en.duration = noa_attr.desc[0].duration;
   param->opp_en.interval = noa_attr.desc[0].interval;
   param->opp_en.start_time = noa_attr.desc[0].start_time;
  } else {
   param->opp_enabled = 0;
   param->opp_dis.cnt = noa_attr.desc[0].count;
   param->opp_dis.duration = noa_attr.desc[0].duration;
   param->opp_dis.interval = noa_attr.desc[0].interval;
   param->opp_dis.start_time = noa_attr.desc[0].start_time;
  }
 }
 wmm_ie = cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
      WLAN_OUI_TYPE_MICROSOFT_WMM,
      ies->data, ies->len);
 if (wmm_ie) {
  struct ieee80211_wmm_param_ie *ie;

  ie = (struct ieee80211_wmm_param_ie *)wmm_ie;
  if ((ie->oui_subtype == 0 || ie->oui_subtype == 1) &&
      ie->version == 1) {
   param->wmm_cap = 1;
   if (ie->qos_info & BIT(7))
    param->uapsd_cap = 1;
  }
 }

 wpa_ie = cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,
      WLAN_OUI_TYPE_MICROSOFT_WPA,
      ies->data, ies->len);
 if (wpa_ie) {
  param->mode_802_11i = 1;
  param->rsn_found = 1;
 }

 rsn_ie = cfg80211_find_ie(WLAN_EID_RSN, ies->data, ies->len);
 if (rsn_ie) {
  int offset = 8;

  param->mode_802_11i = 2;
  param->rsn_found = 1;

  offset += (rsn_ie[offset] * 4) + 2;
  offset += (rsn_ie[offset] * 4) + 2;
  memcpy(param->rsn_cap, &rsn_ie[offset], 2);
 }

 if (param->rsn_found) {
  int i;

  param->rsn_grp_policy = crypto->cipher_group & 0xFF;
  for (i = 0; i < crypto->n_ciphers_pairwise && i < 3; i++)
   param->p_suites[i] = crypto->ciphers_pairwise[i] & 0xFF;

  for (i = 0; i < crypto->n_akm_suites && i < 3; i++)
   param->akm_suites[i] = crypto->akm_suites[i] & 0xFF;
 }

 return (void *)param;
}
