
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union iwreq_data {int name; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int DSConfig; } ;
struct wlan_bssid_ex {TYPE_2__ Configuration; int SupportedRates; scalar_t__ ie_length; int * ies; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int cmd; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
typedef int NDIS_802_11_RATES_EX ;


 int IFNAMSIZ ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _FW_LINKED ;
 int _HT_CAPABILITY_IE_ ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 char* rtw_get_ie (int *,int ,scalar_t__*,scalar_t__) ;
 scalar_t__ rtw_is_cckrates_included (int*) ;
 scalar_t__ rtw_is_cckratesonly_included (int*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int snprintf (int ,int ,char*) ;

__attribute__((used)) static int rtw_wx_get_name(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 u32 ht_ielen = 0;
 char *p;
 u8 ht_cap = 0;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
 NDIS_802_11_RATES_EX *prates = ((void*)0);

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("cmd_code =%x\n", info->cmd));

 if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {

  p = rtw_get_ie(&pcur_bss->ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->ie_length-12);
  if (p && ht_ielen > 0)
   ht_cap = 1;

  prates = &pcur_bss->SupportedRates;

  if (rtw_is_cckratesonly_included((u8 *)prates)) {
   if (ht_cap)
    snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11bn");
   else
    snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11b");
  } else if (rtw_is_cckrates_included((u8 *)prates)) {
   if (ht_cap)
    snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11bgn");
   else
    snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11bg");
  } else {
   if (pcur_bss->Configuration.DSConfig > 14) {
    if (ht_cap)
     snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11an");
    else
     snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11a");
   } else {
    if (ht_cap)
     snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11gn");
    else
     snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11g");
   }
  }
 } else {
  snprintf(wrqu->name, IFNAMSIZ, "unassociated");
 }
 return 0;
}
