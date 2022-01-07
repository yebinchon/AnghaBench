
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int disabled; int fixed; } ;
union iwreq_data {TYPE_2__ rts; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int rts; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ reg; } ;
struct iw_request_info {int dummy; } ;


 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_get_rts(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *vwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 vwrq->rts.value = priv->reg.rts;
 vwrq->rts.disabled = (vwrq->rts.value >= 2347);
 vwrq->rts.fixed = 1;

 return 0;
}
