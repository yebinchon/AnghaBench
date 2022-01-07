
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_cmd_set_def_key {int unicast; int multicast; int key_index; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int ENOMEM ;
 int QLINK_CMD_SET_DEFAULT_KEY ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;

int qtnf_cmd_send_set_default_key(struct qtnf_vif *vif, u8 key_index,
      bool unicast, bool multicast)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_set_def_key *cmd;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_SET_DEFAULT_KEY,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_set_def_key *)cmd_skb->data;
 cmd->key_index = key_index;
 cmd->unicast = unicast;
 cmd->multicast = multicast;

 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
