
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

 int wpa_supplicant_ioctl (struct net_device*,int *) ;

int r871x_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct iwreq *wrq = (struct iwreq *)rq;

 switch (cmd) {
 case 128:
  return wpa_supplicant_ioctl(dev, &wrq->u.data);
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
