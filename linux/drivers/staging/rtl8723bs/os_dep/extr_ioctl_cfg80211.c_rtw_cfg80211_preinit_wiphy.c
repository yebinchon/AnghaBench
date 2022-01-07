
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int interface_modes; int software_iftypes; int flags; int max_sched_scan_reqs; int * wowlan; int max_sched_scan_ssids; int * bands; int n_cipher_suites; int cipher_suites; int mgmt_stypes; int max_remain_on_channel_duration; int max_num_pmkids; int max_scan_ie_len; int max_scan_ssids; int signal_type; } ;
struct TYPE_2__ {scalar_t__ power_mgnt; } ;
struct adapter {TYPE_1__ registrypriv; } ;


 int ARRAY_SIZE (int ) ;
 int BIT (int ) ;
 int CFG80211_SIGNAL_TYPE_MBM ;
 int MAX_PNO_LIST_COUNT ;
 size_t NL80211_BAND_2GHZ ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_STATION ;
 scalar_t__ PS_MODE_ACTIVE ;
 int RTW_MAX_NUM_PMKIDS ;
 int RTW_MAX_REMAIN_ON_CHANNEL_DURATION ;
 int RTW_SCAN_IE_LEN_MAX ;
 int RTW_SSID_SCAN_AMOUNT ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int WIPHY_FLAG_HAVE_AP_SME ;
 int WIPHY_FLAG_OFFCHAN_TX ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int rtw_cfg80211_default_mgmt_stypes ;
 int rtw_cipher_suites ;
 int rtw_spt_band_alloc (size_t) ;
 int wowlan_stub ;

__attribute__((used)) static void rtw_cfg80211_preinit_wiphy(struct adapter *padapter, struct wiphy *wiphy)
{

 wiphy->signal_type = CFG80211_SIGNAL_TYPE_MBM;

 wiphy->max_scan_ssids = RTW_SSID_SCAN_AMOUNT;
 wiphy->max_scan_ie_len = RTW_SCAN_IE_LEN_MAX;
 wiphy->max_num_pmkids = RTW_MAX_NUM_PMKIDS;

 wiphy->max_remain_on_channel_duration = RTW_MAX_REMAIN_ON_CHANNEL_DURATION;

 wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION)
        | BIT(NL80211_IFTYPE_ADHOC)
        | BIT(NL80211_IFTYPE_AP)
        | BIT(NL80211_IFTYPE_MONITOR)
        ;

 wiphy->mgmt_stypes = rtw_cfg80211_default_mgmt_stypes;

 wiphy->software_iftypes |= BIT(NL80211_IFTYPE_MONITOR);

 wiphy->cipher_suites = rtw_cipher_suites;
 wiphy->n_cipher_suites = ARRAY_SIZE(rtw_cipher_suites);


 wiphy->bands[NL80211_BAND_2GHZ] = rtw_spt_band_alloc(NL80211_BAND_2GHZ);

 wiphy->flags |= WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL;
 wiphy->flags |= WIPHY_FLAG_OFFCHAN_TX | WIPHY_FLAG_HAVE_AP_SME;
 if (padapter->registrypriv.power_mgnt != PS_MODE_ACTIVE)
  wiphy->flags |= WIPHY_FLAG_PS_ON_BY_DEFAULT;
 else
  wiphy->flags &= ~WIPHY_FLAG_PS_ON_BY_DEFAULT;
}
