
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct station_parameters {int sta_flags_set; int sta_flags_mask; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {int iftype; } ;
struct qtnf_vif {TYPE_3__* mac; TYPE_2__ wdev; int vifid; } ;
struct TYPE_4__ {void* value; void* mask; } ;
struct qlink_cmd_change_sta {void* if_type; TYPE_1__ flag_update; int sta_addr; } ;
struct TYPE_6__ {int bus; int macid; } ;


 int EINVAL ;
 int ENOMEM ;


 int QLINK_CMD_CHANGE_STA ;
 int QLINK_IFTYPE_AP ;
 int QLINK_IFTYPE_STATION ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int ether_addr_copy (int ,int const*) ;
 int pr_err (char*,int) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;
 int qtnf_encode_sta_flags (int ) ;

int qtnf_cmd_send_change_sta(struct qtnf_vif *vif, const u8 *mac,
        struct station_parameters *params)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_change_sta *cmd;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_CHANGE_STA,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_change_sta *)cmd_skb->data;
 ether_addr_copy(cmd->sta_addr, mac);
 cmd->flag_update.mask =
  cpu_to_le32(qtnf_encode_sta_flags(params->sta_flags_mask));
 cmd->flag_update.value =
  cpu_to_le32(qtnf_encode_sta_flags(params->sta_flags_set));

 switch (vif->wdev.iftype) {
 case 129:
  cmd->if_type = cpu_to_le16(QLINK_IFTYPE_AP);
  break;
 case 128:
  cmd->if_type = cpu_to_le16(QLINK_IFTYPE_STATION);
  break;
 default:
  pr_err("unsupported iftype %d\n", vif->wdev.iftype);
  ret = -EINVAL;
  goto out;
 }

 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
