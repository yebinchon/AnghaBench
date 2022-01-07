
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_resp_channel_get {int chan; } ;
struct qlink_cmd {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int macid; struct qtnf_bus* bus; } ;


 int ENOMEM ;
 int QLINK_CMD_CHAN_GET ;
 int consume_skb (struct sk_buff*) ;
 int priv_to_wiphy (TYPE_1__*) ;
 int qlink_chandef_q2cfg (int ,int *,struct cfg80211_chan_def*) ;
 int qtnf_bus_lock (struct qtnf_bus*) ;
 int qtnf_bus_unlock (struct qtnf_bus*) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send_with_reply (struct qtnf_bus*,struct sk_buff*,struct sk_buff**,int,int *) ;

int qtnf_cmd_get_channel(struct qtnf_vif *vif, struct cfg80211_chan_def *chdef)
{
 struct qtnf_bus *bus = vif->mac->bus;
 const struct qlink_resp_channel_get *resp;
 struct sk_buff *cmd_skb;
 struct sk_buff *resp_skb = ((void*)0);
 int ret;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_CHAN_GET,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(bus);
 ret = qtnf_cmd_send_with_reply(bus, cmd_skb, &resp_skb,
           sizeof(*resp), ((void*)0));
 if (ret)
  goto out;

 resp = (const struct qlink_resp_channel_get *)resp_skb->data;
 qlink_chandef_q2cfg(priv_to_wiphy(vif->mac), &resp->chan, chdef);

out:
 qtnf_bus_unlock(bus);
 consume_skb(resp_skb);

 return ret;
}
