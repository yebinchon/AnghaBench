
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int m; int e; int i; } ;
union iwreq_data {TYPE_3__ freq; } ;
struct TYPE_6__ {int DSConfig; } ;
struct wlan_bssid_ex {TYPE_2__ Configuration; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct wlan_bssid_ex network; } ;
struct mlme_priv {TYPE_1__ cur_network; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_8__ {int cur_channel; } ;
struct adapter {TYPE_4__ mlmeextpriv; struct mlme_priv mlmepriv; } ;


 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int rtw_ch2freq (int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_wx_get_freq(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 struct wlan_bssid_ex *pcur_bss = &pmlmepriv->cur_network.network;

 if (check_fwstate(pmlmepriv, _FW_LINKED) == 1) {

  wrqu->freq.m = rtw_ch2freq(pcur_bss->Configuration.DSConfig) * 100000;
  wrqu->freq.e = 1;
  wrqu->freq.i = pcur_bss->Configuration.DSConfig;

 } else {
  wrqu->freq.m = rtw_ch2freq(padapter->mlmeextpriv.cur_channel) * 100000;
  wrqu->freq.e = 1;
  wrqu->freq.i = padapter->mlmeextpriv.cur_channel;
 }

 return 0;
}
