
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wlan_bssid_ex {int MacAddress; } ;
struct mlme_ext_info {int state; int network; } ;
struct mlme_ext_priv {int link_timer; int cur_bwmode; int cur_ch_offset; int cur_channel; struct mlme_ext_info mlmext_info; } ;
struct disconnect_parm {int deauth_timeout_ms; } ;
struct TYPE_2__ {int wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;


 scalar_t__ H2C_SUCCESS ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HT_CHANNEL_WIDTH_20 ;
 int HW_VAR_BCN_FUNC ;
 int HW_VAR_BSSID ;
 int HW_VAR_MLME_DISCONNECT ;
 int Set_MSR (struct adapter*,int ) ;
 int WIFI_FW_ADHOC_STATE ;
 int WIFI_FW_AP_STATE ;
 int WIFI_FW_NULL_STATE ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int _HW_STATE_STATION_ ;
 int del_timer_sync (int *) ;
 int flush_all_cam_entry (struct adapter*) ;
 scalar_t__ is_client_associated_to_ap (struct adapter*) ;
 int issue_deauth_ex (struct adapter*,int ,int ,int,int) ;
 scalar_t__* null_addr ;
 int rtw_free_uc_swdec_pending_queue (struct adapter*) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,scalar_t__*) ;
 int set_channel_bwmode (struct adapter*,int ,int ,int ) ;
 int update_tx_basic_rate (struct adapter*,int ) ;

u8 disconnect_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct disconnect_parm *param = (struct disconnect_parm *)pbuf;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&pmlmeinfo->network);
 u8 val8;

 if (is_client_associated_to_ap(padapter))
  issue_deauth_ex(padapter, pnetwork->MacAddress, WLAN_REASON_DEAUTH_LEAVING, param->deauth_timeout_ms/100, 100);

 rtw_hal_set_hwreg(padapter, HW_VAR_MLME_DISCONNECT, ((void*)0));
 rtw_hal_set_hwreg(padapter, HW_VAR_BSSID, null_addr);


 update_tx_basic_rate(padapter, padapter->registrypriv.wireless_mode);

 if (((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE)) {

  val8 = 0;
  rtw_hal_set_hwreg(padapter, HW_VAR_BCN_FUNC, (u8 *)(&val8));
 }


 Set_MSR(padapter, _HW_STATE_STATION_);

 pmlmeinfo->state = WIFI_FW_NULL_STATE;


 pmlmeext->cur_bwmode = HT_CHANNEL_WIDTH_20;
 pmlmeext->cur_ch_offset = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

 set_channel_bwmode(padapter, pmlmeext->cur_channel, pmlmeext->cur_ch_offset, pmlmeext->cur_bwmode);

 flush_all_cam_entry(padapter);

 del_timer_sync(&pmlmeext->link_timer);

 rtw_free_uc_swdec_pending_queue(padapter);

 return H2C_SUCCESS;
}
