
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int fixed; } ;
union iwreq_data {TYPE_2__ bitrate; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ tx_rate; } ;
struct ks_wlan_private {scalar_t__ sleep_mode; int current_rate; TYPE_1__ reg; } ;
struct iw_request_info {int dummy; } ;


 int EPERM ;
 int RATE_MASK ;
 scalar_t__ SLP_SLEEP ;
 scalar_t__ TX_RATE_FIXED ;
 int atomic_read (int *) ;
 int in_interrupt () ;
 int ks_wlan_update_phy_information (struct ks_wlan_private*) ;
 int netdev_dbg (struct net_device*,char*,int ,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int update_phyinfo ;

__attribute__((used)) static int ks_wlan_get_rate(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *vwrq, char *extra)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 netdev_dbg(dev, "in_interrupt = %ld update_phyinfo = %d\n",
     in_interrupt(), atomic_read(&update_phyinfo));

 if (priv->sleep_mode == SLP_SLEEP)
  return -EPERM;


 if (!atomic_read(&update_phyinfo))
  ks_wlan_update_phy_information(priv);

 vwrq->bitrate.value = ((priv->current_rate) & RATE_MASK) * 500000;
 vwrq->bitrate.fixed = (priv->reg.tx_rate == TX_RATE_FIXED) ? 1 : 0;

 return 0;
}
