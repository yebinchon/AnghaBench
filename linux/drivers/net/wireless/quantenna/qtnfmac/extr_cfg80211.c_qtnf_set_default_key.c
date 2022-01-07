
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct qtnf_vif {int vifid; TYPE_1__* mac; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int macid; } ;


 int pr_err (char*,int ,int ,int ,int,int) ;
 int qtnf_cmd_send_set_default_key (struct qtnf_vif*,int ,int,int) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int qtnf_set_default_key(struct wiphy *wiphy, struct net_device *dev,
    u8 key_index, bool unicast, bool multicast)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(dev);
 int ret;

 ret = qtnf_cmd_send_set_default_key(vif, key_index, unicast, multicast);
 if (ret)
  pr_err("VIF%u.%u: failed to set dflt key: idx=%u uc=%u mc=%u\n",
         vif->mac->macid, vif->vifid, key_index, unicast,
         multicast);

 return ret;
}
