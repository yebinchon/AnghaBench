
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {int vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd_start_cac {int chan; int cac_time_ms; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int macid; struct qtnf_bus* bus; } ;


 int ENOMEM ;
 int QLINK_CMD_START_CAC ;
 int cpu_to_le32 (int ) ;
 int qlink_chandef_cfg2q (struct cfg80211_chan_def const*,int *) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (struct qtnf_bus*,struct sk_buff*) ;

int qtnf_cmd_start_cac(const struct qtnf_vif *vif,
         const struct cfg80211_chan_def *chdef,
         u32 cac_time_ms)
{
 struct qtnf_bus *bus = vif->mac->bus;
 struct sk_buff *cmd_skb;
 struct qlink_cmd_start_cac *cmd;
 int ret;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_START_CAC,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 cmd = (struct qlink_cmd_start_cac *)cmd_skb->data;
 cmd->cac_time_ms = cpu_to_le32(cac_time_ms);
 qlink_chandef_cfg2q(chdef, &cmd->chan);

 qtnf_bus_lock(bus);
 ret = qtnf_cmd_send(bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(bus);

 return ret;
}
