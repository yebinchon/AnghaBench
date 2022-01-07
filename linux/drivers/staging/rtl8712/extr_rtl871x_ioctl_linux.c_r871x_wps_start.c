
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_point {int pointer; } ;
union iwreq_data {struct iw_point data; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct _adapter {TYPE_1__ ledpriv; scalar_t__ driver_stopped; } ;


 int EFAULT ;
 int EINVAL ;
 int LED_CTL_START_WPS ;
 int LED_CTL_STOP_WPS ;
 int LED_CTL_STOP_WPS_FAIL ;
 scalar_t__ copy_from_user (void*,int ,int) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct _adapter*,int ) ;
 int stub2 (struct _adapter*,int ) ;
 int stub3 (struct _adapter*,int ) ;

__attribute__((used)) static int r871x_wps_start(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct _adapter *padapter = netdev_priv(dev);
 struct iw_point *pdata = &wrqu->data;
 u32 u32wps_start = 0;

 if ((padapter->driver_stopped) || (pdata == ((void*)0)))
  return -EINVAL;
 if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
  return -EFAULT;
 if (u32wps_start == 0)
  u32wps_start = *extra;
 if (u32wps_start == 1)
  padapter->ledpriv.LedControlHandler(padapter,
      LED_CTL_START_WPS);
 else if (u32wps_start == 2)
  padapter->ledpriv.LedControlHandler(padapter,
      LED_CTL_STOP_WPS);
 else if (u32wps_start == 3)
  padapter->ledpriv.LedControlHandler(padapter,
      LED_CTL_STOP_WPS_FAIL);
 return 0;
}
