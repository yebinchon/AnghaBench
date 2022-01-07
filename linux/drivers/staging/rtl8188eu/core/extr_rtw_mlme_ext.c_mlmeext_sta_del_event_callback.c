
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlme_ext_info {int state; } ;
struct mlme_ext_priv {int link_timer; int cur_bwmode; int cur_ch_offset; int cur_channel; struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {int wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;


 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HT_CHANNEL_WIDTH_20 ;
 int HW_VAR_BSSID ;
 int HW_VAR_MLME_DISCONNECT ;
 int Set_MSR (struct adapter*,int ) ;
 int WIFI_FW_NULL_STATE ;
 int _HW_STATE_STATION_ ;
 int del_timer_sync (int *) ;
 int flush_all_cam_entry (struct adapter*) ;
 scalar_t__ is_IBSS_empty (struct adapter*) ;
 scalar_t__ is_client_associated_to_ap (struct adapter*) ;
 int * null_addr ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int *) ;
 int set_channel_bwmode (struct adapter*,int ,int ,int ) ;
 int update_tx_basic_rate (struct adapter*,int ) ;

void mlmeext_sta_del_event_callback(struct adapter *padapter)
{
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 if (is_client_associated_to_ap(padapter) || is_IBSS_empty(padapter)) {
  rtw_hal_set_hwreg(padapter, HW_VAR_MLME_DISCONNECT, ((void*)0));
  rtw_hal_set_hwreg(padapter, HW_VAR_BSSID, null_addr);


  update_tx_basic_rate(padapter, padapter->registrypriv.wireless_mode);


  pmlmeext->cur_bwmode = HT_CHANNEL_WIDTH_20;
  pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;


  set_channel_bwmode(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);

  flush_all_cam_entry(padapter);

  pmlmeinfo->state = WIFI_FW_NULL_STATE;


  Set_MSR(padapter, _HW_STATE_STATION_);

  del_timer_sync(&pmlmeext->link_timer);
 }
}
