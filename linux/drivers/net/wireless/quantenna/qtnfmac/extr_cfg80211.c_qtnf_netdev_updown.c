
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_vif {int vifid; TYPE_1__* mac; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int macid; } ;


 int pr_err (char*,char*,int ,int ) ;
 scalar_t__ qtnf_cmd_send_updown_intf (struct qtnf_vif*,int) ;
 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;

void qtnf_netdev_updown(struct net_device *ndev, bool up)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);

 if (qtnf_cmd_send_updown_intf(vif, up))
  pr_err("failed to send %s command to VIF%u.%u\n",
         up ? "UP" : "DOWN", vif->mac->macid, vif->vifid);
}
