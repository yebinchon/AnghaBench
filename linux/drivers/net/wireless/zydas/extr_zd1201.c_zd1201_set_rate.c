
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; } ;


 short ZD1201_RATEB1 ;
 short ZD1201_RATEB11 ;
 short ZD1201_RATEB2 ;
 short ZD1201_RATEB5 ;
 int ZD1201_RID_TXRATECNTL ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_mac_reset (struct zd1201*) ;
 int zd1201_setconfig16 (struct zd1201*,int ,short) ;

__attribute__((used)) static int zd1201_set_rate(struct net_device *dev,
    struct iw_request_info *info, struct iw_param *rrq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short rate;
 int err;

 switch (rrq->value) {
  case 1000000:
   rate = ZD1201_RATEB1;
   break;
  case 2000000:
   rate = ZD1201_RATEB2;
   break;
  case 5500000:
   rate = ZD1201_RATEB5;
   break;
  case 11000000:
  default:
   rate = ZD1201_RATEB11;
   break;
 }
 if (!rrq->fixed) {
  rate |= rate-1;
 }

 err = zd1201_setconfig16(zd, ZD1201_RID_TXRATECNTL, rate);
 if (err)
  return err;

 return zd1201_mac_reset(zd);
}
