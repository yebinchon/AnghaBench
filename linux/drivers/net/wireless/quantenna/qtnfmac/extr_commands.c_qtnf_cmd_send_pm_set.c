
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {int vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd_pm_set {int pm_standby_timer; int pm_mode; } ;
struct TYPE_2__ {int macid; struct qtnf_bus* bus; } ;


 int ENOMEM ;
 int QLINK_CMD_PM_SET ;
 int cpu_to_le32 (int) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;

int qtnf_cmd_send_pm_set(const struct qtnf_vif *vif, u8 pm_mode, int timeout)
{
 struct qtnf_bus *bus = vif->mac->bus;
 struct sk_buff *cmd_skb;
 struct qlink_cmd_pm_set *cmd;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_PM_SET, sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 cmd = (struct qlink_cmd_pm_set *)cmd_skb->data;
 cmd->pm_mode = pm_mode;
 cmd->pm_standby_timer = cpu_to_le32(timeout);

 qtnf_bus_lock(bus);

 ret = qtnf_cmd_send(bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(bus);

 return ret;
}
