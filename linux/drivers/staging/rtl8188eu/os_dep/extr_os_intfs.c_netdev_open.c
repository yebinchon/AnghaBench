
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {int hw_init_mutex; } ;


 int ERESTARTSYS ;
 int _netdev_open (struct net_device*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

int netdev_open(struct net_device *pnetdev)
{
 int ret;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);

 if (mutex_lock_interruptible(&padapter->hw_init_mutex))
  return -ERESTARTSYS;
 ret = _netdev_open(pnetdev);
 mutex_unlock(&padapter->hw_init_mutex);
 return ret;
}
