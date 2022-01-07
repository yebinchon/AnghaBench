
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wlan_bssid_ex {int Rssi; } ;
struct smooth_rssi_data {int total_num; int* elements; size_t index; int total_val; } ;
struct TYPE_5__ {int signal; struct smooth_rssi_data signal_qual_data; } ;
struct TYPE_4__ {int network; } ;
struct TYPE_6__ {TYPE_1__ cur_network; } ;
struct _adapter {TYPE_2__ recvpriv; TYPE_3__ mlmepriv; } ;


 scalar_t__ PHY_LINKQUALITY_SLID_WIN_MAX ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (TYPE_3__*,int ) ;
 scalar_t__ is_same_network (int *,struct wlan_bssid_ex*) ;
 int memcpy (int*,int*,int ) ;
 int r8712_get_wlan_bssid_ex_sz (struct wlan_bssid_ex*) ;

__attribute__((used)) static void update_network(struct wlan_bssid_ex *dst,
      struct wlan_bssid_ex *src,
      struct _adapter *padapter)
{
 u32 last_evm = 0, tmpVal;
 struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;

 if (check_fwstate(&padapter->mlmepriv, _FW_LINKED) &&
     is_same_network(&(padapter->mlmepriv.cur_network.network), src)) {
  if (padapter->recvpriv.signal_qual_data.total_num++ >=
      PHY_LINKQUALITY_SLID_WIN_MAX) {
   padapter->recvpriv.signal_qual_data.total_num =
       PHY_LINKQUALITY_SLID_WIN_MAX;
   last_evm = sqd->elements[sqd->index];
   padapter->recvpriv.signal_qual_data.total_val -=
     last_evm;
  }
  padapter->recvpriv.signal_qual_data.total_val += src->Rssi;

  sqd->elements[sqd->index++] = src->Rssi;
  if (padapter->recvpriv.signal_qual_data.index >=
      PHY_LINKQUALITY_SLID_WIN_MAX)
   padapter->recvpriv.signal_qual_data.index = 0;

  tmpVal = padapter->recvpriv.signal_qual_data.total_val /
    padapter->recvpriv.signal_qual_data.total_num;
  padapter->recvpriv.signal = (u8)tmpVal;

  src->Rssi = padapter->recvpriv.signal;
 } else {
  src->Rssi = (src->Rssi + dst->Rssi) / 2;
 }
 memcpy((u8 *)dst, (u8 *)src, r8712_get_wlan_bssid_ex_sz(src));
}
