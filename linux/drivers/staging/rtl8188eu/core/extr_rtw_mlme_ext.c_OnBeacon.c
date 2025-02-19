
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
struct wlan_bssid_ex {int MacAddress; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct recv_frame {TYPE_1__* pkt; } ;
struct TYPE_8__ {int network; } ;
struct mlme_priv {TYPE_4__ cur_network; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct mlme_ext_info {int state; TYPE_3__* FW_sta_info; struct wlan_bssid_ex network; int assoc_AP_vendor; } ;
struct mlme_ext_priv {TYPE_2__ sitesurvey_res; struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct adapter {struct sta_priv stapriv; struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_5__ {int len; int * data; } ;


 int DBG_88E_LEVEL (int ,char*) ;
 int ETH_ALEN ;
 int GetAddr2Ptr (int *) ;
 int GetAddr3Ptr (int *) ;
 int NUM_STA ;
 scalar_t__ SCAN_PROCESS ;
 int WIFI_FW_ADHOC_STATE ;
 int WIFI_FW_ASSOC_SUCCESS ;
 int WIFI_FW_AUTH_NULL ;
 int WIFI_FW_STATION_STATE ;
 int WLAN_HDR_A3_LEN ;
 int _BEACON_IE_OFFSET_ ;
 scalar_t__ _FAIL ;
 unsigned int _SUCCESS ;
 int _drv_info_ ;
 int allocate_fw_sta_entry (struct adapter*) ;
 int check_assoc_AP (int *,int) ;
 unsigned int collect_bss_info (struct adapter*,struct recv_frame*,struct wlan_bssid_ex*) ;
 int kfree (struct wlan_bssid_ex*) ;
 int memcmp (int ,int ,int ) ;
 int receive_disconnect (struct adapter*,int ,int) ;
 int report_add_sta_event (struct adapter*,int ,int) ;
 int report_survey_event (struct adapter*,struct recv_frame*) ;
 int rtw_check_bcn_info (struct adapter*,int *,int) ;
 int rtw_get_bcn_info (TYPE_4__*) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 scalar_t__ rtw_malloc (int) ;
 int sta_rx_pkts (struct sta_info*) ;
 int start_clnt_auth (struct adapter*) ;
 int update_TSF (struct mlme_ext_priv*,int *,int) ;
 int update_beacon_info (struct adapter*,int *,int,struct sta_info*) ;
 int update_network (int *,struct wlan_bssid_ex*,struct adapter*,int) ;
 scalar_t__ update_sta_support_rate (struct adapter*,int *,int,int) ;

__attribute__((used)) static unsigned int OnBeacon(struct adapter *padapter,
        struct recv_frame *precv_frame)
{
 int cam_idx;
 struct sta_info *psta;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct sta_priv *pstapriv = &padapter->stapriv;
 u8 *pframe = precv_frame->pkt->data;
 uint len = precv_frame->pkt->len;
 struct wlan_bssid_ex *pbss;
 int ret = _SUCCESS;
 struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;

 if (pmlmeext->sitesurvey_res.state == SCAN_PROCESS) {
  report_survey_event(padapter, precv_frame);
  return _SUCCESS;
 }

 if (!memcmp(GetAddr3Ptr(pframe), pnetwork->MacAddress, ETH_ALEN)) {
  if (pmlmeinfo->state & WIFI_FW_AUTH_NULL) {

   pbss = (struct wlan_bssid_ex *)rtw_malloc(sizeof(struct wlan_bssid_ex));
   if (pbss) {
    if (collect_bss_info(padapter, precv_frame, pbss) == _SUCCESS) {
     update_network(&pmlmepriv->cur_network.network, pbss, padapter, 1);
     rtw_get_bcn_info(&pmlmepriv->cur_network);
    }
    kfree(pbss);
   }


   pmlmeinfo->assoc_AP_vendor = check_assoc_AP(pframe+sizeof(struct ieee80211_hdr_3addr), len-sizeof(struct ieee80211_hdr_3addr));


   update_TSF(pmlmeext, pframe, len);


   start_clnt_auth(padapter);

   return _SUCCESS;
  }

  if (((pmlmeinfo->state & 0x03) == WIFI_FW_STATION_STATE) && (pmlmeinfo->state & WIFI_FW_ASSOC_SUCCESS)) {
   psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
   if (psta != ((void*)0)) {
    ret = rtw_check_bcn_info(padapter, pframe, len);
    if (!ret) {
      DBG_88E_LEVEL(_drv_info_, "ap has changed, disconnect now\n ");
      receive_disconnect(padapter, pmlmeinfo->network.MacAddress, 65535);
      return _SUCCESS;
    }


    if ((sta_rx_pkts(psta) & 0xf) == 0)
     update_beacon_info(padapter, pframe, len, psta);
   }
  } else if ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) {
   psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
   if (psta != ((void*)0)) {


    if ((sta_rx_pkts(psta) & 0xf) == 0)
     update_beacon_info(padapter, pframe, len, psta);
   } else {

    cam_idx = allocate_fw_sta_entry(padapter);
    if (cam_idx == NUM_STA)
     goto _END_ONBEACON_;


    if (update_sta_support_rate(padapter, (pframe + WLAN_HDR_A3_LEN + _BEACON_IE_OFFSET_), (len - WLAN_HDR_A3_LEN - _BEACON_IE_OFFSET_), cam_idx) == _FAIL) {
     pmlmeinfo->FW_sta_info[cam_idx].status = 0;
     goto _END_ONBEACON_;
    }


    update_TSF(pmlmeext, pframe, len);


    report_add_sta_event(padapter, GetAddr2Ptr(pframe), cam_idx);
   }
  }
 }

_END_ONBEACON_:

 return _SUCCESS;
}
