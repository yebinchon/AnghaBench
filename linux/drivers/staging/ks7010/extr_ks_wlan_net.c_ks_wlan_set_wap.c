
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ operation_mode; scalar_t__ bssid; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int need_commit; TYPE_2__ reg; } ;
struct iw_request_info {int dummy; } ;


 int EINPROGRESS ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ MODE_ADHOC ;
 scalar_t__ MODE_INFRASTRUCTURE ;
 scalar_t__ SLP_SLEEP ;
 int SME_MODE_SET ;
 int eth_zero_addr (scalar_t__) ;
 int ether_addr_copy (scalar_t__,int ) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 int netdev_dbg (struct net_device*,char*,scalar_t__) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_set_wap(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *awrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (priv->reg.operation_mode != MODE_ADHOC &&
     priv->reg.operation_mode != MODE_INFRASTRUCTURE) {
  eth_zero_addr(priv->reg.bssid);
  return -EOPNOTSUPP;
 }

 ether_addr_copy(priv->reg.bssid, awrq->ap_addr.sa_data);
 if (is_valid_ether_addr((u8 *)priv->reg.bssid))
  priv->need_commit |= SME_MODE_SET;

 netdev_dbg(dev, "bssid = %pM\n", priv->reg.bssid);


 if (priv->need_commit) {
  priv->need_commit |= SME_MODE_SET;
  return -EINPROGRESS;
 }
 return 0;
}
