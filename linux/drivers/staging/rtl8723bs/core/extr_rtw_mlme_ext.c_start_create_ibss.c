
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ DSConfig; } ;
struct wlan_bssid_ex {TYPE_1__ Configuration; } ;
struct mlme_ext_info {int state; int bcn_interval; int network; } ;
struct mlme_ext_priv {int cur_channel; struct mlme_ext_info mlmext_info; } ;
struct TYPE_5__ {int* MacAddress; } ;
struct TYPE_6__ {TYPE_2__ dev_network; } ;
struct adapter {TYPE_3__ registrypriv; struct mlme_ext_priv mlmeextpriv; } ;


 int CHANNEL_WIDTH_20 ;
 int DBG_871X (char*,unsigned short) ;
 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HW_VAR_BSSID ;
 int HW_VAR_DO_IQK ;
 int HW_VAR_MLME_JOIN ;
 int HW_VAR_SEC_CFG ;
 int RT_TRACE (int ,int ,char*) ;
 int Set_MSR (struct adapter*,int) ;
 int WIFI_FW_ADHOC_STATE ;
 int WIFI_FW_ASSOC_SUCCESS ;
 int WIFI_FW_NULL_STATE ;
 scalar_t__ _FAIL ;
 int _drv_err_ ;
 int _module_rtl871x_mlme_c_ ;
 int beacon_timing_control (struct adapter*) ;
 unsigned short cap_IBSS ;
 int get_beacon_interval (struct wlan_bssid_ex*) ;
 int report_join_res (struct adapter*,int) ;
 unsigned short rtw_get_capability (struct wlan_bssid_ex*) ;
 int rtw_hal_set_hwreg (struct adapter*,int ,int*) ;
 int rtw_indicate_connect (struct adapter*) ;
 scalar_t__ send_beacon (struct adapter*) ;
 int set_channel_bwmode (struct adapter*,int,int ,int ) ;
 int update_bmc_sta (struct adapter*) ;
 int update_capinfo (struct adapter*,unsigned short) ;
 int update_wireless_mode (struct adapter*) ;

void start_create_ibss(struct adapter *padapter)
{
 unsigned short caps;
 u8 val8;
 u8 join_type;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&(pmlmeinfo->network));
 pmlmeext->cur_channel = (u8)pnetwork->Configuration.DSConfig;
 pmlmeinfo->bcn_interval = get_beacon_interval(pnetwork);


 update_wireless_mode(padapter);


 caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
 update_capinfo(padapter, caps);
 if (caps&cap_IBSS) {
  val8 = 0xcf;
  rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));

  rtw_hal_set_hwreg(padapter, HW_VAR_DO_IQK, ((void*)0));



  set_channel_bwmode(padapter, pmlmeext->cur_channel, HAL_PRIME_CHNL_OFFSET_DONT_CARE, CHANNEL_WIDTH_20);

  beacon_timing_control(padapter);


  pmlmeinfo->state = WIFI_FW_ADHOC_STATE;
  Set_MSR(padapter, (pmlmeinfo->state & 0x3));


  if (send_beacon(padapter) == _FAIL) {
   RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("issuing beacon frame fail....\n"));

   report_join_res(padapter, -1);
   pmlmeinfo->state = WIFI_FW_NULL_STATE;
  } else {
   rtw_hal_set_hwreg(padapter, HW_VAR_BSSID, padapter->registrypriv.dev_network.MacAddress);
   join_type = 0;
   rtw_hal_set_hwreg(padapter, HW_VAR_MLME_JOIN, (u8 *)(&join_type));

   report_join_res(padapter, 1);
   pmlmeinfo->state |= WIFI_FW_ASSOC_SUCCESS;
   rtw_indicate_connect(padapter);
  }
 } else {
  DBG_871X("start_create_ibss, invalid cap:%x\n", caps);
  return;
 }

 update_bmc_sta(padapter);

}
