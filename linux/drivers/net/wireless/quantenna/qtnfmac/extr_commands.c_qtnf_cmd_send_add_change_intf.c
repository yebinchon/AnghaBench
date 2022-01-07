
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_3__* mac; int mac_addr; int vifid; } ;
struct TYPE_5__ {int * mac_addr; } ;
struct qlink_resp_manage_intf {TYPE_2__ intf_info; } ;
struct TYPE_4__ {int use4addr; int mac_addr; void* if_type; } ;
struct qlink_cmd_manage_intf {TYPE_1__ intf_info; } ;
typedef enum qlink_cmd_type { ____Placeholder_qlink_cmd_type } qlink_cmd_type ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_6__ {int bus; int macid; } ;


 int EINVAL ;
 int ENOMEM ;


 int QLINK_IFTYPE_AP ;
 int QLINK_IFTYPE_STATION ;
 int consume_skb (struct sk_buff*) ;
 void* cpu_to_le16 (int ) ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int *) ;
 int pr_err (char*,int ,int ,int) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int,int) ;
 int qtnf_cmd_send_with_reply (int ,struct sk_buff*,struct sk_buff**,int,int *) ;

__attribute__((used)) static int qtnf_cmd_send_add_change_intf(struct qtnf_vif *vif,
      enum nl80211_iftype iftype,
      int use4addr,
      u8 *mac_addr,
      enum qlink_cmd_type cmd_type)
{
 struct sk_buff *cmd_skb, *resp_skb = ((void*)0);
 struct qlink_cmd_manage_intf *cmd;
 const struct qlink_resp_manage_intf *resp;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         cmd_type,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_manage_intf *)cmd_skb->data;
 cmd->intf_info.use4addr = use4addr;

 switch (iftype) {
 case 129:
  cmd->intf_info.if_type = cpu_to_le16(QLINK_IFTYPE_AP);
  break;
 case 128:
  cmd->intf_info.if_type = cpu_to_le16(QLINK_IFTYPE_STATION);
  break;
 default:
  pr_err("VIF%u.%u: unsupported type %d\n", vif->mac->macid,
         vif->vifid, iftype);
  ret = -EINVAL;
  goto out;
 }

 if (mac_addr)
  ether_addr_copy(cmd->intf_info.mac_addr, mac_addr);
 else
  eth_zero_addr(cmd->intf_info.mac_addr);

 ret = qtnf_cmd_send_with_reply(vif->mac->bus, cmd_skb, &resp_skb,
           sizeof(*resp), ((void*)0));
 if (ret)
  goto out;

 resp = (const struct qlink_resp_manage_intf *)resp_skb->data;
 ether_addr_copy(vif->mac_addr, resp->intf_info.mac_addr);

out:
 qtnf_bus_unlock(vif->mac->bus);
 consume_skb(resp_skb);

 return ret;
}
