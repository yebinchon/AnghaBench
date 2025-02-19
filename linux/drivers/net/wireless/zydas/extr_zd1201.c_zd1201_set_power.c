
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; short value; scalar_t__ disabled; } ;


 int EINVAL ;
 int IW_POWER_PERIOD ;
 int IW_POWER_TIMEOUT ;
 int ZD1201_RID_CNFMAXSLEEPDURATION ;
 int ZD1201_RID_CNFPMENABLED ;
 int ZD1201_RID_CNFPMEPS ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_getconfig16 (struct zd1201*,int ,short*) ;
 int zd1201_setconfig16 (struct zd1201*,int ,short) ;

__attribute__((used)) static int zd1201_set_power(struct net_device *dev,
    struct iw_request_info *info, struct iw_param *vwrq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short enabled, duration, level;
 int err;

 enabled = vwrq->disabled ? 0 : 1;
 if (enabled) {
  if (vwrq->flags & IW_POWER_PERIOD) {
   duration = vwrq->value;
   err = zd1201_setconfig16(zd,
       ZD1201_RID_CNFMAXSLEEPDURATION, duration);
   if (err)
    return err;
   goto out;
  }
  if (vwrq->flags & IW_POWER_TIMEOUT) {
   err = zd1201_getconfig16(zd,
       ZD1201_RID_CNFMAXSLEEPDURATION, &duration);
   if (err)
    return err;
   level = vwrq->value * 4 / duration;
   if (level > 4)
    level = 4;
   if (level < 0)
    level = 0;
   err = zd1201_setconfig16(zd, ZD1201_RID_CNFPMEPS,
       level);
   if (err)
    return err;
   goto out;
  }
  return -EINVAL;
 }
out:
 return zd1201_setconfig16(zd, ZD1201_RID_CNFPMENABLED, enabled);
}
