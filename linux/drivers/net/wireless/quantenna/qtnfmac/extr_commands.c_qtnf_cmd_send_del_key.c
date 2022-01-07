
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_cmd_del_key {int pairwise; int key_index; int addr; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int ENOMEM ;
 int QLINK_CMD_DEL_KEY ;
 int eth_broadcast_addr (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;

int qtnf_cmd_send_del_key(struct qtnf_vif *vif, u8 key_index, bool pairwise,
     const u8 *mac_addr)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_del_key *cmd;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_DEL_KEY,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_del_key *)cmd_skb->data;

 if (mac_addr)
  ether_addr_copy(cmd->addr, mac_addr);
 else
  eth_broadcast_addr(cmd->addr);

 cmd->key_index = key_index;
 cmd->pairwise = pairwise;

 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
