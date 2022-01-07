
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct qtnf_vif {int netdev; int vifid; TYPE_1__* mac; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int macid; } ;


 int netif_carrier_off (int ) ;
 int pr_err (char*,int ,int ) ;
 int qtnf_cmd_send_stop_ap (struct qtnf_vif*) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 int qtnf_scan_done (TYPE_1__*,int) ;

__attribute__((used)) static int qtnf_stop_ap(struct wiphy *wiphy, struct net_device *dev)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);
 int ret;

 qtnf_scan_done(vif->mac, 1);

 ret = qtnf_cmd_send_stop_ap(vif);
 if (ret)
  pr_err("VIF%u.%u: failed to stop AP operation in FW\n",
         vif->mac->macid, vif->vifid);

 netif_carrier_off(vif->netdev);

 return ret;
}
