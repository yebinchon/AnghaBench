
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int SME_STOP_REQUEST ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_stop_request(struct net_device *dev,
        struct iw_request_info *info, __u32 *uwrq,
        char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (!(*uwrq))
  return -EINVAL;

 hostif_sme_enqueue(priv, SME_STOP_REQUEST);
 return 0;
}
