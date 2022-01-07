
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wlan_bssid_ex {unsigned char* SupportedRates; } ;
struct mlme_ext_info {int HT_enable; scalar_t__ HT_caps_enable; scalar_t__ HT_info_enable; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {int cur_wireless_mode; struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {int wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;


 int HW_VAR_RESP_SIFS ;
 int IEEE80211_CCK_RATE_1MB ;
 int IEEE80211_OFDM_RATE_6MB ;
 int WIRELESS_11B ;
 int WIRELESS_11BG ;
 int WIRELESS_11G ;
 int WIRELESS_11_24N ;
 scalar_t__ cckrates_included (unsigned char*,int) ;
 scalar_t__ cckratesonly_included (unsigned char*,int) ;
 int rtw_get_rateset_len (unsigned char*) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;
 int update_mgnt_tx_rate (struct adapter*,int ) ;

void update_wireless_mode(struct adapter *padapter)
{
 int ratelen, network_type = 0;
 u32 SIFS_Timer;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct wlan_bssid_ex *cur_network = &pmlmeinfo->network;
 unsigned char *rate = cur_network->SupportedRates;

 ratelen = rtw_get_rateset_len(cur_network->SupportedRates);

 if (pmlmeinfo->HT_info_enable && pmlmeinfo->HT_caps_enable)
  pmlmeinfo->HT_enable = 1;

 if (pmlmeinfo->HT_enable)
  network_type = WIRELESS_11_24N;

 if (cckratesonly_included(rate, ratelen))
  network_type |= WIRELESS_11B;
 else if (cckrates_included(rate, ratelen))
  network_type |= WIRELESS_11BG;
 else
  network_type |= WIRELESS_11G;

 pmlmeext->cur_wireless_mode = network_type & padapter->registrypriv.wireless_mode;

 SIFS_Timer = 0x0a0a0808;


 rtw_hal_set_hwreg(padapter, HW_VAR_RESP_SIFS, (u8 *)&SIFS_Timer);

 update_mgnt_tx_rate(padapter,
       pmlmeext->cur_wireless_mode & WIRELESS_11B ?
       IEEE80211_CCK_RATE_1MB : IEEE80211_OFDM_RATE_6MB);
}
