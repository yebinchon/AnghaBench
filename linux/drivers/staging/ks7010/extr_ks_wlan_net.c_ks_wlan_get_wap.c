
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int bssid; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; TYPE_1__ current_ap; int connect_status; } ;
struct iw_request_info {int dummy; } ;


 int ARPHRD_ETHER ;
 int EPERM ;
 scalar_t__ SLP_SLEEP ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_connect_status (int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *awrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (is_connect_status(priv->connect_status))
  ether_addr_copy(awrq->ap_addr.sa_data, priv->current_ap.bssid);
 else
  eth_zero_addr(awrq->ap_addr.sa_data);

 awrq->ap_addr.sa_family = ARPHRD_ETHER;

 return 0;
}
