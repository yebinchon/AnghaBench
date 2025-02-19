
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct ieee_param {int* sta_addr; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int EINVAL ;
 int WIFI_AP_STATE ;
 int check_fwstate (struct mlme_priv*,int ) ;
 int rtw_acl_add_sta (struct adapter*,int*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != 1)
  return -EINVAL;

 if (param->sta_addr[0] == 0xff && param->sta_addr[1] == 0xff &&
     param->sta_addr[2] == 0xff && param->sta_addr[3] == 0xff &&
     param->sta_addr[4] == 0xff && param->sta_addr[5] == 0xff) {
  return -EINVAL;
 }

 return rtw_acl_add_sta(padapter, param->sta_addr);

}
