
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wlan_bssid_ex {int IELength; scalar_t__ IEs; } ;
struct ndis_802_11_fix_ie {int dummy; } ;
struct ndis_80211_var_ie {int ElementID; scalar_t__ Length; int data; } ;
struct mlme_ext_info {struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int RSN_TKIP_CIPHER ;
 int RTW_WPA_OUI ;
 int WLAN_CAPABILITY_PRIVACY ;
 int WPA_TKIP_CIPHER ;


 int memcmp (int ,int ,int) ;
 int rtw_get_capability (struct wlan_bssid_ex*) ;

unsigned int is_ap_in_tkip(struct adapter *padapter)
{
 u32 i;
 struct ndis_80211_var_ie *pIE;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct wlan_bssid_ex *cur_network = &(pmlmeinfo->network);

 if (rtw_get_capability((struct wlan_bssid_ex *)cur_network) & WLAN_CAPABILITY_PRIVACY) {
  for (i = sizeof(struct ndis_802_11_fix_ie); i < pmlmeinfo->network.IELength;) {
   pIE = (struct ndis_80211_var_ie *)(pmlmeinfo->network.IEs + i);

   switch (pIE->ElementID) {
   case 128:
    if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) && (!memcmp((pIE->data + 12), WPA_TKIP_CIPHER, 4)))
     return 1;

    break;

   case 129:
    if (!memcmp((pIE->data + 8), RSN_TKIP_CIPHER, 4))
     return 1;

   default:
    break;
   }

   i += (pIE->Length + 2);
  }

  return 0;
 } else
  return 0;
}
