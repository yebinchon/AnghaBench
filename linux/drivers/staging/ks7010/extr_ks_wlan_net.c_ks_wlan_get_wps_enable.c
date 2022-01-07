
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int wps_enabled; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ wps; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;


 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_get_wps_enable(struct net_device *dev,
      struct iw_request_info *info, __u32 *uwrq,
      char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;

 *uwrq = priv->wps.wps_enabled;
 netdev_info(dev, "return=%d\n", *uwrq);

 return 0;
}
