
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ operation_mode; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ reg; } ;
struct iw_request_info {int dummy; } ;


 int EPERM ;
 int IW_MODE_ADHOC ;
 int IW_MODE_INFRA ;
 scalar_t__ MODE_INFRASTRUCTURE ;
 scalar_t__ SLP_SLEEP ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_get_mode(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *uwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 uwrq->mode = (priv->reg.operation_mode == MODE_INFRASTRUCTURE) ?
        IW_MODE_INFRA : IW_MODE_ADHOC;

 return 0;
}
