
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wlan_bssid_ex {int* MacAddress; int Ssid; } ;
struct ndis_802_11_ssid {int dummy; } ;
struct TYPE_5__ {int MacAddress; } ;
struct TYPE_6__ {TYPE_2__ network; } ;
struct mlme_priv {int to_join; int lock; TYPE_3__ cur_network; int assoc_ssid; int assoc_timer; int fw_state; int scan_to_timer; int * wps_probe_req_ie; scalar_t__ wps_probe_req_ie_len; } ;
struct TYPE_4__ {struct wlan_bssid_ex dev_network; } ;
struct adapter {TYPE_1__ registrypriv; int recvpriv; struct mlme_priv mlmepriv; } ;


 int DBG_871X (char*,scalar_t__) ;
 int MAX_JOIN_TIMEOUT ;
 int RTW_ROAM_ACTIVE ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_STATION_STATE ;
 int WLAN_REASON_ACTIVE_ROAM ;
 int _FW_LINKED ;
 int _FW_UNDER_LINKING ;
 int _FW_UNDER_SURVEY ;
 int _SUCCESS ;
 int _cancel_timer (int *,int*) ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int _set_timer (int *,int ) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int get_fwstate (struct mlme_priv*) ;
 int kfree (int *) ;
 int memcpy (int *,int *,int) ;
 int receive_disconnect (struct adapter*,int ,int ) ;
 int rtw_cfg80211_surveydone_event_callback (struct adapter*) ;
 scalar_t__ rtw_chk_roam_flags (struct adapter*,int ) ;
 int rtw_createbss_cmd (struct adapter*) ;
 scalar_t__ rtw_dec_to_roam (struct adapter*) ;
 int rtw_free_assoc_resources (struct adapter*,int) ;
 int rtw_generate_random_ibss (int*) ;
 int rtw_indicate_connect (struct adapter*) ;
 int rtw_indicate_disconnect (struct adapter*) ;
 int rtw_indicate_scan_done (struct adapter*,int) ;
 int rtw_os_xmit_schedule (struct adapter*) ;
 int rtw_select_and_join_from_scanned_queue (struct mlme_priv*) ;
 int rtw_select_roaming_candidate (struct mlme_priv*) ;
 int rtw_set_signal_stat_timer (int *) ;
 int rtw_set_to_roam (struct adapter*,int ) ;
 int rtw_sitesurvey_cmd (struct adapter*,int *,int,int *,int ) ;
 scalar_t__ rtw_to_roam (struct adapter*) ;
 int rtw_update_registrypriv_dev_network (struct adapter*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_surveydone_event_callback(struct adapter *adapter, u8 *pbuf)
{
 u8 timer_cancelled = 0;
 struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);

 spin_lock_bh(&pmlmepriv->lock);
 if (pmlmepriv->wps_probe_req_ie) {
  pmlmepriv->wps_probe_req_ie_len = 0;
  kfree(pmlmepriv->wps_probe_req_ie);
  pmlmepriv->wps_probe_req_ie = ((void*)0);
 }

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_surveydone_event_callback: fw_state:%x\n\n", get_fwstate(pmlmepriv)));

 if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY)) {


  timer_cancelled = 1;


  _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);
 } else {

  RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("nic status =%x, survey done event comes too late!\n", get_fwstate(pmlmepriv)));
 }
 spin_unlock_bh(&pmlmepriv->lock);

 if (timer_cancelled)
  _cancel_timer(&pmlmepriv->scan_to_timer, &timer_cancelled);


 spin_lock_bh(&pmlmepriv->lock);

 rtw_set_signal_stat_timer(&adapter->recvpriv);

 if (pmlmepriv->to_join == 1) {
  if ((check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1)) {
   if (check_fwstate(pmlmepriv, _FW_LINKED) == 0) {
    set_fwstate(pmlmepriv, _FW_UNDER_LINKING);

    if (rtw_select_and_join_from_scanned_queue(pmlmepriv) == _SUCCESS) {
     _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
    } else {
     struct wlan_bssid_ex *pdev_network = &(adapter->registrypriv.dev_network);
     u8 *pibss = adapter->registrypriv.dev_network.MacAddress;


     _clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY);

     RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("switching to adhoc master\n"));

     memcpy(&pdev_network->Ssid, &pmlmepriv->assoc_ssid, sizeof(struct ndis_802_11_ssid));

     rtw_update_registrypriv_dev_network(adapter);
     rtw_generate_random_ibss(pibss);

     pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;

     if (rtw_createbss_cmd(adapter) != _SUCCESS) {
     RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("Error =>rtw_createbss_cmd status FAIL\n"));
     }

     pmlmepriv->to_join = 0;
    }
   }
  } else {
   int s_ret;
   set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
   pmlmepriv->to_join = 0;
   s_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
   if (_SUCCESS == s_ret) {
        _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
   } else if (s_ret == 2) {
    _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
    rtw_indicate_connect(adapter);
   } else {
    DBG_871X("try_to_join, but select scanning queue fail, to_roam:%d\n", rtw_to_roam(adapter));

    if (rtw_to_roam(adapter) != 0) {
     if (rtw_dec_to_roam(adapter) == 0
      || _SUCCESS != rtw_sitesurvey_cmd(adapter, &pmlmepriv->assoc_ssid, 1, ((void*)0), 0)
     ) {
      rtw_set_to_roam(adapter, 0);
      rtw_free_assoc_resources(adapter, 1);
      rtw_indicate_disconnect(adapter);
     } else {
      pmlmepriv->to_join = 1;
     }
    } else
     rtw_indicate_disconnect(adapter);

    _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
   }
  }
 } else {
  if (rtw_chk_roam_flags(adapter, RTW_ROAM_ACTIVE)) {
   if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)
    && check_fwstate(pmlmepriv, _FW_LINKED)) {
    if (rtw_select_roaming_candidate(pmlmepriv) == _SUCCESS) {
     receive_disconnect(adapter, pmlmepriv->cur_network.network.MacAddress
      , WLAN_REASON_ACTIVE_ROAM);
    }
   }
  }
 }



 spin_unlock_bh(&pmlmepriv->lock);

 rtw_os_xmit_schedule(adapter);

 rtw_cfg80211_surveydone_event_callback(adapter);

 rtw_indicate_scan_done(adapter, 0);
}
