
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int iftype; } ;
struct qtnf_vif {TYPE_3__* mac; TYPE_1__ wdev; int vifid; } ;
struct TYPE_5__ {int mac_addr; void* if_type; } ;
struct qlink_cmd_manage_intf {TYPE_2__ intf_info; } ;
struct TYPE_6__ {int bus; int macid; } ;


 int EINVAL ;
 int ENOMEM ;


 int QLINK_CMD_DEL_INTF ;
 int QLINK_IFTYPE_AP ;
 int QLINK_IFTYPE_STATION ;
 void* cpu_to_le16 (int ) ;
 int eth_zero_addr (int ) ;
 int pr_warn (char*,int ,int ,int) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;

int qtnf_cmd_send_del_intf(struct qtnf_vif *vif)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_manage_intf *cmd;
 int ret = 0;

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_DEL_INTF,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_manage_intf *)cmd_skb->data;

 switch (vif->wdev.iftype) {
 case 129:
  cmd->intf_info.if_type = cpu_to_le16(QLINK_IFTYPE_AP);
  break;
 case 128:
  cmd->intf_info.if_type = cpu_to_le16(QLINK_IFTYPE_STATION);
  break;
 default:
  pr_warn("VIF%u.%u: unsupported iftype %d\n", vif->mac->macid,
   vif->vifid, vif->wdev.iftype);
  ret = -EINVAL;
  goto out;
 }

 eth_zero_addr(cmd->intf_info.mac_addr);

 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);
 return ret;
}
