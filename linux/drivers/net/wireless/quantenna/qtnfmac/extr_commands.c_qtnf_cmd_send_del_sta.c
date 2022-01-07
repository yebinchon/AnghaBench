
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct station_del_parameters {int reason_code; int subtype; int mac; } ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_cmd_del_sta {int reason_code; int subtype; int sta_addr; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int ENOMEM ;
 int QLINK_CMD_DEL_STA ;
 int cpu_to_le16 (int ) ;
 int eth_broadcast_addr (int ) ;
 int ether_addr_copy (int ,int ) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;

int qtnf_cmd_send_del_sta(struct qtnf_vif *vif,
     struct station_del_parameters *params)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_del_sta *cmd;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_DEL_STA,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_del_sta *)cmd_skb->data;

 if (params->mac)
  ether_addr_copy(cmd->sta_addr, params->mac);
 else
  eth_broadcast_addr(cmd->sta_addr);

 cmd->subtype = params->subtype;
 cmd->reason_code = cpu_to_le16(params->reason_code);

 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
