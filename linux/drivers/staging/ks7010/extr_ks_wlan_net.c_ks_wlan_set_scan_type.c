
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ scan_type; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ reg; } ;
struct iw_request_info {int dummy; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ ACTIVE_SCAN ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ PASSIVE_SCAN ;
 scalar_t__ SLP_SLEEP ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_scan_type(struct net_device *dev,
     struct iw_request_info *info, __u32 *uwrq,
     char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (*uwrq != ACTIVE_SCAN && *uwrq != PASSIVE_SCAN)
  return -EINVAL;

 priv->reg.scan_type = *uwrq;
 return 0;
}
