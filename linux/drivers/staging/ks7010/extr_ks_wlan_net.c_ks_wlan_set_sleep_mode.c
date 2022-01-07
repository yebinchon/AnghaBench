
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; } ;
struct iw_request_info {int dummy; } ;
typedef scalar_t__ __u32 ;


 int EINVAL ;
 scalar_t__ SLP_ACTIVE ;
 scalar_t__ SLP_SLEEP ;
 int SME_SLEEP_REQUEST ;
 int SME_STOP_REQUEST ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int netdev_err (struct net_device*,char*,scalar_t__) ;
 int netdev_info (struct net_device*,char*,scalar_t__) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_sleep_mode(struct net_device *dev,
      struct iw_request_info *info,
      __u32 *uwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (*uwrq != SLP_SLEEP &&
     *uwrq != SLP_ACTIVE) {
  netdev_err(dev, "SET_SLEEP_MODE %d error\n", *uwrq);
  return -EINVAL;
 }

 priv->sleep_mode = *uwrq;
 netdev_info(dev, "SET_SLEEP_MODE %d\n", priv->sleep_mode);

 if (*uwrq == SLP_SLEEP)
  hostif_sme_enqueue(priv, SME_STOP_REQUEST);

 hostif_sme_enqueue(priv, SME_SLEEP_REQUEST);

 return 0;
}
