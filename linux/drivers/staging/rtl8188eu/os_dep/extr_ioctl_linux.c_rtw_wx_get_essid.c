
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ length; } ;
union iwreq_data {TYPE_3__ essid; } ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int ssid; scalar_t__ ssid_length; } ;
struct wlan_bssid_ex {TYPE_2__ ssid; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int _FW_LINKED ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_wx_get_essid(struct net_device *dev,
         struct iw_request_info *a,
         union iwreq_data *wrqu, char *extra)
{
 u32 len;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_essid\n"));

 if ((check_fwstate(pmlmepriv, _FW_LINKED)) ||
     (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))) {
  len = pcur_bss->ssid.ssid_length;
  memcpy(extra, pcur_bss->ssid.ssid, len);
 } else {
  len = 0;
  *extra = 0;
 }
 wrqu->essid.length = len;
 wrqu->essid.flags = 1;

 return 0;
}
