
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct wlan_bssid_ex {int MacAddress; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int RT_TRACE (int ,int ,char*) ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_AP_STATE ;
 int _FW_LINKED ;
 int _drv_info_ ;
 int _module_rtl871x_mlme_c_ ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int eth_zero_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_wx_get_wap(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{

 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;

 wrqu->ap_addr.sa_family = ARPHRD_ETHER;

 eth_zero_addr(wrqu->ap_addr.sa_data);

 RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_wap\n"));

 if (((check_fwstate(pmlmepriv, _FW_LINKED)) == 1) ||
   ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) == 1) ||
   ((check_fwstate(pmlmepriv, WIFI_AP_STATE)) == 1)) {
  memcpy(wrqu->ap_addr.sa_data, pcur_bss->MacAddress, ETH_ALEN);
 } else {
  eth_zero_addr(wrqu->ap_addr.sa_data);
 }

 return 0;
}
