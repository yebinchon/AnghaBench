
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct iwreq {TYPE_1__ u; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;



 int rtw_hostapd_ioctl (struct net_device*,int *) ;
 int rtw_ioctl_wext_private (struct net_device*,TYPE_1__*) ;
 int wpa_supplicant_ioctl (struct net_device*,int *) ;

int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct iwreq *wrq = (struct iwreq *)rq;
 int ret = 0;

 switch (cmd) {
 case 129:
  ret = wpa_supplicant_ioctl(dev, &wrq->u.data);
  break;
 case 130:
  ret = rtw_hostapd_ioctl(dev, &wrq->u.data);
  break;
 case 128:
  ret = rtw_ioctl_wext_private(dev, &wrq->u);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
