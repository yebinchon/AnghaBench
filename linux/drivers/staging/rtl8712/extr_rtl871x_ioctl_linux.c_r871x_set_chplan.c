
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_point {int dummy; } ;
union iwreq_data {struct iw_point data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct _adapter {scalar_t__ driver_stopped; } ;


 int EINVAL ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int r8712_set_chplan_cmd (struct _adapter*,int) ;

__attribute__((used)) static int r871x_set_chplan(struct net_device *dev,
    struct iw_request_info *info,
    union iwreq_data *wrqu, char *extra)
{
 int ret = 0;
 struct _adapter *padapter = netdev_priv(dev);
 struct iw_point *pdata = &wrqu->data;
 int ch_plan = -1;

 if ((padapter->driver_stopped) || (pdata == ((void*)0))) {
  ret = -EINVAL;
  goto exit;
 }
 ch_plan = (int)*extra;
 r8712_set_chplan_cmd(padapter, ch_plan);

exit:

 return ret;
}
