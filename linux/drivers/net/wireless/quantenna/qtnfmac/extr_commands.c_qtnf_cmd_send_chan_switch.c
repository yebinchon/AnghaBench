
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct qtnf_wmac {int bus; int macid; } ;
struct qtnf_vif {int vifid; struct qtnf_wmac* mac; } ;
struct qlink_cmd_chan_switch {int beacon_count; int block_tx; int radar_required; int channel; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct cfg80211_csa_settings {int count; int block_tx; int radar_required; TYPE_2__ chandef; } ;
struct TYPE_3__ {int hw_value; } ;


 int ENOMEM ;
 int QLINK_CMD_CHAN_SWITCH ;
 int cpu_to_le16 (int ) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;

int qtnf_cmd_send_chan_switch(struct qtnf_vif *vif,
         struct cfg80211_csa_settings *params)
{
 struct qtnf_wmac *mac = vif->mac;
 struct qlink_cmd_chan_switch *cmd;
 struct sk_buff *cmd_skb;
 int ret;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(mac->macid, vif->vifid,
         QLINK_CMD_CHAN_SWITCH,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(mac->bus);

 cmd = (struct qlink_cmd_chan_switch *)cmd_skb->data;
 cmd->channel = cpu_to_le16(params->chandef.chan->hw_value);
 cmd->radar_required = params->radar_required;
 cmd->block_tx = params->block_tx;
 cmd->beacon_count = params->count;

 ret = qtnf_cmd_send(mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(mac->bus);

 return ret;
}
