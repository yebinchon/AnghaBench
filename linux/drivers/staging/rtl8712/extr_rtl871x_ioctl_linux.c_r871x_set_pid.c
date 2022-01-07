
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_point {int pointer; } ;
union iwreq_data {struct iw_point data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {int pid; scalar_t__ driver_stopped; } ;


 int EINVAL ;
 scalar_t__ copy_from_user (int *,int ,int) ;
 struct _adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int r871x_set_pid(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);
 struct iw_point *pdata = &wrqu->data;

 if ((padapter->driver_stopped) || (pdata == ((void*)0)))
  return -EINVAL;
 if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
  return -EINVAL;
 return 0;
}
