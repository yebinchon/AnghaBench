
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
struct TYPE_5__ {int ssid_length; scalar_t__ ssid; } ;
struct wlan_bssid_ex {TYPE_2__ ssid; } ;
struct recv_frame {TYPE_1__* pkt; } ;
struct TYPE_6__ {scalar_t__ join_res; } ;
struct mlme_priv {TYPE_3__ cur_network; } ;
struct mlme_ext_info {scalar_t__ hidden_ssid_mode; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;
struct TYPE_4__ {int len; int * data; } ;


 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_STATION_STATE ;
 int WLAN_HDR_A3_LEN ;
 int _FW_LINKED ;
 int _PROBEREQ_IE_OFFSET_ ;
 int _SSID_IE_ ;
 unsigned int _SUCCESS ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int get_sa (int *) ;
 int issue_probersp (struct adapter*,int ) ;
 scalar_t__ memcmp (void*,void*,int ) ;
 unsigned char* rtw_get_ie (int *,int ,unsigned int*,int) ;

__attribute__((used)) static unsigned int OnProbeReq(struct adapter *padapter,
          struct recv_frame *precv_frame)
{
 unsigned int ielen;
 unsigned char *p;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 struct wlan_bssid_ex *cur = &pmlmeinfo->network;
 u8 *pframe = precv_frame->pkt->data;
 uint len = precv_frame->pkt->len;

 if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
  return _SUCCESS;

 if (!check_fwstate(pmlmepriv, _FW_LINKED) &&
     !check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_AP_STATE))
  return _SUCCESS;

 p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _SSID_IE_, &ielen,
   len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);


 if (p) {
  if ((ielen != 0 && memcmp((void *)(p+2), (void *)cur->ssid.ssid, cur->ssid.ssid_length)) ||
      (ielen == 0 && pmlmeinfo->hidden_ssid_mode))
   return _SUCCESS;

  if (check_fwstate(pmlmepriv, _FW_LINKED) &&
      pmlmepriv->cur_network.join_res)
   issue_probersp(padapter, get_sa(pframe));
 }
 return _SUCCESS;
}
