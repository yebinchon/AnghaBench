
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {int name; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct wlan_bssid_ex {int* rates; scalar_t__ IELength; int * IEs; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;


 int IFNAMSIZ ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _FW_LINKED ;
 int _HT_CAPABILITY_IE_ ;
 int check_fwstate (struct mlme_priv*,int) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 char* r8712_get_ie (int *,int ,scalar_t__*,scalar_t__) ;
 scalar_t__ r8712_is_cckrates_included (int*) ;
 scalar_t__ r8712_is_cckratesonly_included (int*) ;
 int snprintf (int ,int ,char*) ;

__attribute__((used)) static int r8711_wx_get_name(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);
 u32 ht_ielen = 0;
 char *p;
 u8 ht_cap = 0;
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;
 u8 *prates;

 if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE) ==
     1) {

  p = r8712_get_ie(&pcur_bss->IEs[12], _HT_CAPABILITY_IE_,
     &ht_ielen, pcur_bss->IELength - 12);
  if (p && ht_ielen > 0)
   ht_cap = 1;
  prates = pcur_bss->rates;
  if (r8712_is_cckratesonly_included(prates)) {
   if (ht_cap)
    snprintf(wrqu->name, IFNAMSIZ,
      "IEEE 802.11bn");
   else
    snprintf(wrqu->name, IFNAMSIZ,
      "IEEE 802.11b");
  } else if (r8712_is_cckrates_included(prates)) {
   if (ht_cap)
    snprintf(wrqu->name, IFNAMSIZ,
      "IEEE 802.11bgn");
   else
    snprintf(wrqu->name, IFNAMSIZ,
      "IEEE 802.11bg");
  } else {
   if (ht_cap)
    snprintf(wrqu->name, IFNAMSIZ,
      "IEEE 802.11gn");
   else
    snprintf(wrqu->name, IFNAMSIZ,
      "IEEE 802.11g");
  }
 } else {
  snprintf(wrqu->name, IFNAMSIZ, "unassociated");
 }
 return 0;
}
