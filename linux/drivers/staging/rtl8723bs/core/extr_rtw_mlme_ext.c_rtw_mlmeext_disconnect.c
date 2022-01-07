
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlan_bssid_ex {int dummy; } ;
struct sta_info {int mac_id; } ;
struct TYPE_2__ {scalar_t__ LowPowerTransitionCount; scalar_t__ TrafficTransitionCount; } ;
struct mlme_priv {TYPE_1__ LinkDetectInfo; } ;
struct mlme_ext_info {int state; int network; } ;
struct mlme_ext_priv {int link_timer; int cur_bwmode; int cur_ch_offset; int cur_channel; struct mlme_ext_info mlmext_info; } ;
struct adapter {int stapriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int CHANNEL_WIDTH_20 ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HW_VAR_BSSID ;
 int HW_VAR_MLME_DISCONNECT ;
 int Set_MSR (struct adapter*,int ) ;
 int WIFI_FW_NULL_STATE ;
 int _HW_STATE_STATION_ ;
 int del_timer_sync (int *) ;
 int flush_all_cam_entry (struct adapter*) ;
 int get_my_bssid (struct wlan_bssid_ex*) ;
 int * null_addr ;
 struct sta_info* rtw_get_stainfo (int *,int ) ;
 int rtw_hal_macid_wakeup (struct adapter*,int ) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;
 int set_channel_bwmode (struct adapter*,int ,int ,int ) ;

__attribute__((used)) static void rtw_mlmeext_disconnect(struct adapter *padapter)
{
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
 {
  struct sta_info *psta;
  psta = rtw_get_stainfo(&padapter->stapriv, get_my_bssid(pnetwork));
  if (psta)
   rtw_hal_macid_wakeup(padapter, psta->mac_id);
 }

 rtw_hal_set_hwreg(padapter, HW_VAR_MLME_DISCONNECT, ((void*)0));
 rtw_hal_set_hwreg(padapter, HW_VAR_BSSID, null_addr);


 Set_MSR(padapter, _HW_STATE_STATION_);

 pmlmeinfo->state = WIFI_FW_NULL_STATE;


 pmlmeext->cur_bwmode = CHANNEL_WIDTH_20;
 pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

 set_channel_bwmode(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);

 flush_all_cam_entry(padapter);

 del_timer_sync(&pmlmeext->link_timer);


 pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
 pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;

}
