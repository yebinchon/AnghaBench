
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
struct _adapter {struct mlme_priv mlmepriv; } ;


 int ARPHRD_ETHER ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_AP_STATE ;
 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int) ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 struct _adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int r8711_wx_get_wap(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;

 wrqu->ap_addr.sa_family = ARPHRD_ETHER;
 if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE |
         WIFI_AP_STATE))
  ether_addr_copy(wrqu->ap_addr.sa_data, pcur_bss->MacAddress);
 else
  eth_zero_addr(wrqu->ap_addr.sa_data);
 return 0;
}
