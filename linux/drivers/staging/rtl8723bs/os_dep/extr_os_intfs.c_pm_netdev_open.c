
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int hw_init_mutex; } ;


 scalar_t__ _SUCCESS ;
 int _netdev_open (struct net_device*) ;
 TYPE_1__* adapter_to_dvobj (struct adapter*) ;
 scalar_t__ ips_netdrv_open (struct adapter*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
{
 int status = -1;

 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(pnetdev);

 if (1 == bnormal) {
  if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->hw_init_mutex)) == 0) {
   status = _netdev_open(pnetdev);
   mutex_unlock(&(adapter_to_dvobj(padapter)->hw_init_mutex));
  }
 }
 else
  status = (_SUCCESS == ips_netdrv_open(padapter)) ? (0) : (-1);

 return status;
}
