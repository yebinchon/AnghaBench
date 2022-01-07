
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
struct TYPE_6__ {int bBusyTraffic; } ;
struct __queue {int lock; int queue; } ;
struct TYPE_4__ {int join_res; } ;
struct mlme_priv {int to_join; int assoc_ssid; TYPE_3__ LinkDetectInfo; int fw_state; int assoc_timer; struct __queue scanned_queue; struct list_head* pscanned; TYPE_1__ cur_network; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {struct wlan_bssid_ex dev_network; } ;
struct adapter {TYPE_2__ registrypriv; struct mlme_priv mlmepriv; } ;


 int MAX_JOIN_TIMEOUT ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int _FAIL ;
 int _FW_UNDER_LINKING ;
 int _SUCCESS ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_rtl871x_ioctl_set_c_ ;
 int _set_timer (int *,int ) ;
 int check_fwstate (struct mlme_priv*,int ) ;
 struct list_head* get_list_head (struct __queue*) ;
 struct list_head* get_next (struct list_head*) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (int *,int *,int) ;
 int rtw_createbss_cmd (struct adapter*) ;
 int rtw_generate_random_ibss (int*) ;
 int rtw_select_and_join_from_scanned_queue (struct mlme_priv*) ;
 int rtw_sitesurvey_cmd (struct adapter*,int *,int,int *,int ) ;
 scalar_t__ rtw_to_roam (struct adapter*) ;
 int rtw_update_registrypriv_dev_network (struct adapter*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u8 rtw_do_join(struct adapter *padapter)
{
 struct list_head *plist, *phead;
 u8 *pibss = ((void*)0);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct __queue *queue = &(pmlmepriv->scanned_queue);
 u8 ret = _SUCCESS;

 spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
 phead = get_list_head(queue);
 plist = get_next(phead);

 RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("\n rtw_do_join: phead = %p; plist = %p\n\n\n", phead, plist));

 pmlmepriv->cur_network.join_res = -2;

 set_fwstate(pmlmepriv, _FW_UNDER_LINKING);

 pmlmepriv->pscanned = plist;

 pmlmepriv->to_join = 1;

 if (list_empty(&queue->queue)) {
  spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
  _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);




  if (pmlmepriv->LinkDetectInfo.bBusyTraffic == 0
   || rtw_to_roam(padapter) > 0
  ) {
   RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("rtw_do_join(): site survey if scanned_queue is empty\n."));

   ret = rtw_sitesurvey_cmd(padapter, &pmlmepriv->assoc_ssid, 1, ((void*)0), 0);
   if (_SUCCESS != ret) {
    pmlmepriv->to_join = 0;
    RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("rtw_do_join(): site survey return error\n."));
   }
  } else {
   pmlmepriv->to_join = 0;
   ret = _FAIL;
  }

  goto exit;
 } else {
  int select_ret;
  spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
  select_ret = rtw_select_and_join_from_scanned_queue(pmlmepriv);
  if (select_ret == _SUCCESS) {
   pmlmepriv->to_join = 0;
   _set_timer(&pmlmepriv->assoc_timer, MAX_JOIN_TIMEOUT);
  } else {
   if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == 1) {



    struct wlan_bssid_ex *pdev_network = &(padapter->registrypriv.dev_network);

    pmlmepriv->fw_state = WIFI_ADHOC_MASTER_STATE;

    pibss = padapter->registrypriv.dev_network.MacAddress;

    memcpy(&pdev_network->Ssid, &pmlmepriv->assoc_ssid, sizeof(struct ndis_802_11_ssid));

    rtw_update_registrypriv_dev_network(padapter);

    rtw_generate_random_ibss(pibss);

    if (rtw_createbss_cmd(padapter) != _SUCCESS) {
     RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("***Error =>do_goin: rtw_createbss_cmd status FAIL***\n "));
     ret = 0;
     goto exit;
    }

    pmlmepriv->to_join = 0;

    RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("***Error => rtw_select_and_join_from_scanned_queue FAIL under STA_Mode***\n "));

   } else {

    _clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);



    if (pmlmepriv->LinkDetectInfo.bBusyTraffic == 0
     || rtw_to_roam(padapter) > 0
    ) {

     ret = rtw_sitesurvey_cmd(padapter, &pmlmepriv->assoc_ssid, 1, ((void*)0), 0);
     if (_SUCCESS != ret) {
      pmlmepriv->to_join = 0;
      RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("do_join(): site survey return error\n."));
     }
    } else {
     ret = _FAIL;
     pmlmepriv->to_join = 0;
    }
   }

  }

 }

exit:
 return ret;
}
