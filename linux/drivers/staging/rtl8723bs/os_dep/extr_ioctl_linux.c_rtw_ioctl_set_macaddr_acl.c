
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_3__ {int command; } ;
struct TYPE_4__ {TYPE_1__ mlme; } ;
struct ieee_param {TYPE_2__ u; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 int EINVAL ;
 int WIFI_AP_STATE ;
 int check_fwstate (struct mlme_priv*,int ) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_set_macaddr_acl (struct adapter*,int ) ;

__attribute__((used)) static int rtw_ioctl_set_macaddr_acl(struct net_device *dev, struct ieee_param *param, int len)
{
 int ret = 0;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != 1)
  return -EINVAL;

 rtw_set_macaddr_acl(padapter, param->u.mlme.command);

 return ret;
}
