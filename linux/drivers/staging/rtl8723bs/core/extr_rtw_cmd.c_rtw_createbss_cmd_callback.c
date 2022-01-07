
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wlan_network {int network; int list; int last_scanned; } ;
struct wlan_bssid_ex {int Length; int MacAddress; } ;
struct sta_info {int dummy; } ;
struct TYPE_2__ {int lock; int queue; } ;
struct mlme_priv {int lock; TYPE_1__ scanned_queue; int assoc_timer; struct wlan_network cur_network; } ;
struct cmd_obj {scalar_t__ res; int * parmbuf; } ;
struct adapter {int stapriv; struct mlme_priv mlmepriv; } ;


 scalar_t__ H2C_SUCCESS ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_AP_STATE ;
 int _FW_UNDER_LINKING ;
 int _cancel_timer (int *,int *) ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 int _drv_err_ ;
 int _module_rtl871x_cmd_c_ ;
 int _set_timer (int *,int) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct wlan_bssid_ex*,int ) ;
 struct wlan_network* rtw_alloc_network (struct mlme_priv*) ;
 struct sta_info* rtw_alloc_stainfo (int *,int ) ;
 int rtw_free_cmd_obj (struct cmd_obj*) ;
 struct wlan_network* rtw_get_oldest_wlan_network (TYPE_1__*) ;
 struct sta_info* rtw_get_stainfo (int *,int ) ;
 int rtw_indicate_connect (struct adapter*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
{
 u8 timer_cancelled;
 struct sta_info *psta = ((void*)0);
 struct wlan_network *pwlan = ((void*)0);
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
 struct wlan_network *tgt_network = &(pmlmepriv->cur_network);

 if (pcmd->parmbuf == ((void*)0))
  goto exit;

 if ((pcmd->res != H2C_SUCCESS)) {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: rtw_createbss_cmd_callback  Fail ************\n\n."));
  _set_timer(&pmlmepriv->assoc_timer, 1);
 }

 _cancel_timer(&pmlmepriv->assoc_timer, &timer_cancelled);

 spin_lock_bh(&pmlmepriv->lock);


 if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
  psta = rtw_get_stainfo(&padapter->stapriv, pnetwork->MacAddress);
  if (!psta) {
   psta = rtw_alloc_stainfo(&padapter->stapriv, pnetwork->MacAddress);
   if (psta == ((void*)0)) {
    RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nCan't alloc sta_info when createbss_cmd_callback\n"));
    goto createbss_cmd_fail;
   }
  }

  rtw_indicate_connect(padapter);
 } else {
  pwlan = rtw_alloc_network(pmlmepriv);
  spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
  if (pwlan == ((void*)0)) {
   pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
   if (pwlan == ((void*)0)) {
    RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n Error:  can't get pwlan in rtw_joinbss_event_callback\n"));
    spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
    goto createbss_cmd_fail;
   }
   pwlan->last_scanned = jiffies;
  } else {
   list_add_tail(&(pwlan->list), &pmlmepriv->scanned_queue.queue);
  }

  pnetwork->Length = get_wlan_bssid_ex_sz(pnetwork);
  memcpy(&(pwlan->network), pnetwork, pnetwork->Length);





  memcpy(&tgt_network->network, pnetwork, (get_wlan_bssid_ex_sz(pnetwork)));




  _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);

  spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));


 }

createbss_cmd_fail:

 spin_unlock_bh(&pmlmepriv->lock);
exit:
 rtw_free_cmd_obj(pcmd);
}
