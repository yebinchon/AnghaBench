
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ ht_info_infos_0; void* ht_cap_info; int encryp_protocol; } ;
struct TYPE_4__ {int Ssid; } ;
struct TYPE_5__ {int Privacy; scalar_t__ IELength; scalar_t__ IEs; TYPE_1__ Ssid; } ;
struct wlan_network {TYPE_3__ BcnInfo; TYPE_2__ network; } ;
struct ieee80211_ht_cap {int cap_info; } ;
struct HT_info_element {scalar_t__* infos; } ;
typedef int __le16 ;


 int ENCRYP_PROTOCOL_OPENSYS ;
 int ENCRYP_PROTOCOL_WEP ;
 int ENCRYP_PROTOCOL_WPA ;
 int ENCRYP_PROTOCOL_WPA2 ;
 int RT_TRACE (int ,int ,char*) ;
 unsigned short WLAN_CAPABILITY_PRIVACY ;
 scalar_t__ _FIXED_IE_LENGTH_ ;
 int _HT_ADD_INFO_IE_ ;
 int _HT_CAPABILITY_IE_ ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 void* le16_to_cpu (int ) ;
 int memcpy (int*,int ,int) ;
 int rtw_get_capability_from_ie (scalar_t__) ;
 int rtw_get_cipher_info (struct wlan_network*) ;
 unsigned char* rtw_get_ie (scalar_t__,int ,unsigned int*,scalar_t__) ;
 int rtw_get_sec_ie (scalar_t__,scalar_t__,int *,scalar_t__*,int *,scalar_t__*) ;

void rtw_get_bcn_info(struct wlan_network *pnetwork)
{
 unsigned short cap = 0;
 u8 bencrypt = 0;

 u16 wpa_len = 0, rsn_len = 0;
 struct HT_info_element *pht_info = ((void*)0);
 struct ieee80211_ht_cap *pht_cap = ((void*)0);
 unsigned int len;
 unsigned char *p;
 __le16 le_cap;

 memcpy((u8 *)&le_cap, rtw_get_capability_from_ie(pnetwork->network.IEs), 2);
 cap = le16_to_cpu(le_cap);
 if (cap & WLAN_CAPABILITY_PRIVACY) {
  bencrypt = 1;
  pnetwork->network.Privacy = 1;
 } else {
  pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_OPENSYS;
 }
 rtw_get_sec_ie(pnetwork->network.IEs, pnetwork->network.IELength, ((void*)0), &rsn_len, ((void*)0), &wpa_len);
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));

 if (rsn_len > 0) {
  pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WPA2;
 } else if (wpa_len > 0) {
  pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WPA;
 } else {
  if (bencrypt)
   pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_WEP;
 }
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
    pnetwork->BcnInfo.encryp_protocol));
 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: pnetwork->encryp_protocol is %x\n",
    pnetwork->BcnInfo.encryp_protocol));
 rtw_get_cipher_info(pnetwork);



 p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 if (p && len > 0) {
   pht_cap = (struct ieee80211_ht_cap *)(p + 2);
   pnetwork->BcnInfo.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
 } else {
   pnetwork->BcnInfo.ht_cap_info = 0;
 }

 p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 if (p && len > 0) {
   pht_info = (struct HT_info_element *)(p + 2);
   pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
 } else {
   pnetwork->BcnInfo.ht_info_infos_0 = 0;
 }
}
