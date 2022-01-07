
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int InfrastructureMode; } ;
struct wlan_network {int join_res; TYPE_1__ network; } ;
struct mlme_priv {int lock; struct wlan_network cur_network; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
typedef enum ndis_802_11_network_infra { ____Placeholder_ndis_802_11_network_infra } ndis_802_11_network_infra ;







 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_NULL_STATE ;
 int WIFI_STATION_STATE ;
 int _FW_LINKED ;
 int _clr_fwstate_ (struct mlme_priv*,int ) ;
 int _drv_info_ ;
 int _drv_notice_ ;
 int _module_rtl871x_ioctl_set_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int get_fwstate (struct mlme_priv*) ;
 int rtw_disassoc_cmd (struct adapter*,int ,int) ;
 int rtw_free_assoc_resources (struct adapter*) ;
 int rtw_indicate_disconnect (struct adapter*) ;
 int set_fwstate (struct mlme_priv*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int start_ap_mode (struct adapter*) ;
 int stop_ap_mode (struct adapter*) ;

u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 enum ndis_802_11_network_infra networktype)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_network *cur_network = &pmlmepriv->cur_network;
 enum ndis_802_11_network_infra *pold_state = &cur_network->network.InfrastructureMode;

 RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_notice_,
   ("+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\n",
    *pold_state, networktype, get_fwstate(pmlmepriv)));

 if (*pold_state != networktype) {
  spin_lock_bh(&pmlmepriv->lock);

  RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, (" change mode!"));


  if (*pold_state == 132) {

   cur_network->join_res = -1;




  }

  if (check_fwstate(pmlmepriv, _FW_LINKED) ||
      *pold_state == 130)
   rtw_disassoc_cmd(padapter, 0, 1);

  if (check_fwstate(pmlmepriv, _FW_LINKED) ||
      check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))
   rtw_free_assoc_resources(padapter);

  if (*pold_state == 129 ||
      *pold_state == 130) {
   if (check_fwstate(pmlmepriv, _FW_LINKED))
    rtw_indicate_disconnect(padapter);
        }

  *pold_state = networktype;

  _clr_fwstate_(pmlmepriv, ~WIFI_NULL_STATE);

  switch (networktype) {
  case 130:
   set_fwstate(pmlmepriv, WIFI_ADHOC_STATE);
   break;
  case 129:
   set_fwstate(pmlmepriv, WIFI_STATION_STATE);
   break;
  case 132:
   set_fwstate(pmlmepriv, WIFI_AP_STATE);



   break;
  case 131:
  case 128:
   break;
  }
  spin_unlock_bh(&pmlmepriv->lock);
 }

 return 1;
}
