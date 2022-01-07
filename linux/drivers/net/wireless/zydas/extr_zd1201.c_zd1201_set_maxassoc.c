
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int ap; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;


 int EOPNOTSUPP ;
 int ZD1201_RID_CNFMAXASSOCSTATIONS ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_setconfig16 (struct zd1201*,int ,int ) ;

__attribute__((used)) static int zd1201_set_maxassoc(struct net_device *dev,
    struct iw_request_info *info, struct iw_param *rrq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 int err;

 if (!zd->ap)
  return -EOPNOTSUPP;

 err = zd1201_setconfig16(zd, ZD1201_RID_CNFMAXASSOCSTATIONS, rrq->value);
 if (err)
  return err;
 return 0;
}
