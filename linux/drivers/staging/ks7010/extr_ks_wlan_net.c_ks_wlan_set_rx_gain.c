
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int rx_gain; int rx_mode; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ gain; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int SME_SET_GAIN ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_rx_gain(struct net_device *dev,
          struct iw_request_info *info, __u32 *uwrq,
          char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;

 if (*uwrq > 0xFF)
  return -EINVAL;

 priv->gain.rx_gain = (u8)*uwrq;
 priv->gain.rx_mode = (priv->gain.rx_gain < 0xFF) ? 1 : 0;
 hostif_sme_enqueue(priv, SME_SET_GAIN);
 return 0;
}
