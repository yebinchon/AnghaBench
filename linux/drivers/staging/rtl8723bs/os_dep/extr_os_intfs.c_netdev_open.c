
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwrctrl_priv {int bInSuspend; } ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int hw_init_mutex; } ;


 int DBG_871X (char*,int) ;
 int _netdev_open (struct net_device*) ;
 TYPE_1__* adapter_to_dvobj (struct adapter*) ;
 struct pwrctrl_priv* adapter_to_pwrctl (struct adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

int netdev_open(struct net_device *pnetdev)
{
 int ret;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);
 struct pwrctrl_priv *pwrctrlpriv = adapter_to_pwrctl(padapter);

 if (pwrctrlpriv->bInSuspend == 1) {
  DBG_871X("+871x_drv - drv_open, bInSuspend =%d\n", pwrctrlpriv->bInSuspend);
  return 0;
 }

 if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->hw_init_mutex)))
  return -1;

 ret = _netdev_open(pnetdev);
 mutex_unlock(&(adapter_to_dvobj(padapter)->hw_init_mutex));

 return ret;
}
