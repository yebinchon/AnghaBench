
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int IEs; } ;
struct wlan_network {TYPE_3__ network; } ;
struct TYPE_9__ {scalar_t__* Ssid; scalar_t__ SsidLength; } ;
struct wlan_bssid_ex {TYPE_4__ Ssid; int IEs; int MacAddress; } ;
struct TYPE_10__ {int lock; } ;
struct TYPE_6__ {int IEs; int MacAddress; } ;
struct TYPE_7__ {TYPE_1__ network; } ;
struct mlme_priv {int lock; TYPE_5__ scanned_queue; TYPE_2__ cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int ETH_ALEN ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _FW_UNDER_LINKING ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;
 int memcmp (int *,int ,int ) ;
 int memcpy (int ,int ,int) ;
 int rtw_add_network (struct adapter*,struct wlan_bssid_ex*) ;
 struct wlan_network* rtw_find_network (TYPE_5__*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_survey_event_callback(struct adapter *adapter, u8 *pbuf)
{
 u32 len;
 struct wlan_bssid_ex *pnetwork;
 struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);

 pnetwork = (struct wlan_bssid_ex *)pbuf;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_survey_event_callback, ssid =%s\n", pnetwork->Ssid.Ssid));

 len = get_wlan_bssid_ex_sz(pnetwork);
 if (len > (sizeof(struct wlan_bssid_ex))) {
  RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n ****rtw_survey_event_callback: return a wrong bss ***\n"));
  return;
 }


 spin_lock_bh(&pmlmepriv->lock);


 if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) == 1) {

  if (!memcmp(&(pmlmepriv->cur_network.network.MacAddress), pnetwork->MacAddress, ETH_ALEN)) {
   struct wlan_network *ibss_wlan = ((void*)0);

   memcpy(pmlmepriv->cur_network.network.IEs, pnetwork->IEs, 8);
   spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
   ibss_wlan = rtw_find_network(&pmlmepriv->scanned_queue, pnetwork->MacAddress);
   if (ibss_wlan) {
    memcpy(ibss_wlan->network.IEs, pnetwork->IEs, 8);
    spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
    goto exit;
   }
   spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
  }
 }


 if ((check_fwstate(pmlmepriv, _FW_UNDER_LINKING)) == 0) {
  if (pnetwork->Ssid.Ssid[0] == 0) {
   pnetwork->Ssid.SsidLength = 0;
  }
  rtw_add_network(adapter, pnetwork);
 }

exit:

 spin_unlock_bh(&pmlmepriv->lock);

 return;
}
