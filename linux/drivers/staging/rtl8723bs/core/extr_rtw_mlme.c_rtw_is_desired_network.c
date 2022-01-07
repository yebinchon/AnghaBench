
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ Privacy; scalar_t__ InfrastructureMode; scalar_t__ IELength; scalar_t__ IEs; } ;
struct wlan_network {TYPE_2__ network; } ;
struct security_priv {scalar_t__ ndisencryptstatus; scalar_t__ ndisauthtype; } ;
struct TYPE_7__ {scalar_t__ InfrastructureMode; } ;
struct TYPE_8__ {TYPE_3__ network; } ;
struct mlme_priv {TYPE_4__ cur_network; } ;
struct TYPE_5__ {int wifi_spec; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_priv mlmepriv; struct security_priv securitypriv; } ;


 int DBG_871X (char*,scalar_t__,scalar_t__) ;
 scalar_t__ Ndis802_11AuthModeWPA2PSK ;
 scalar_t__ Ndis802_11EncryptionDisabled ;
 int WIFI_ADHOC_STATE ;
 int WIFI_UNDER_WPS ;
 scalar_t__ _BEACON_IE_OFFSET_ ;
 scalar_t__ _FIXED_IE_LENGTH_ ;
 int _RSN_IE_2_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int * rtw_get_ie (scalar_t__,int ,scalar_t__*,scalar_t__) ;
 int * rtw_get_wps_ie (scalar_t__,scalar_t__,int *,scalar_t__*) ;

int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwork)
{
 struct security_priv *psecuritypriv = &adapter->securitypriv;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 u32 desired_encmode;
 u32 privacy;


 uint wps_ielen;

 int bselected = 1;

 desired_encmode = psecuritypriv->ndisencryptstatus;
 privacy = pnetwork->network.Privacy;

 if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
  if (rtw_get_wps_ie(pnetwork->network.IEs+_FIXED_IE_LENGTH_, pnetwork->network.IELength-_FIXED_IE_LENGTH_, ((void*)0), &wps_ielen) != ((void*)0))
   return 1;
  else
   return 0;

 }
 if (adapter->registrypriv.wifi_spec == 1) {
  u8 *p = ((void*)0);
  uint ie_len = 0;

  if ((desired_encmode == Ndis802_11EncryptionDisabled) && (privacy != 0))
     bselected = 0;

  if (psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPA2PSK) {
   p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
   if (p && ie_len > 0) {
    bselected = 1;
   } else {
    bselected = 0;
   }
  }
 }


 if ((desired_encmode != Ndis802_11EncryptionDisabled) && (privacy == 0)) {
  DBG_871X("desired_encmode: %d, privacy: %d\n", desired_encmode, privacy);
  bselected = 0;
 }

 if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1) {
  if (pnetwork->network.InfrastructureMode != pmlmepriv->cur_network.network.InfrastructureMode)
   bselected = 0;
 }


 return bselected;
}
