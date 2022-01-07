
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_cmd {int dummy; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int E2BIG ;
 int ENOMEM ;
 int QLINK_CMD_MGMT_SET_APPIE ;
 size_t QTNF_MAX_CMD_BUF_SIZE ;
 int pr_warn (char*,int ,int ,int ,size_t) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;
 int qtnf_cmd_tlv_ie_set_add (struct sk_buff*,int ,int const*,size_t) ;

int qtnf_cmd_send_mgmt_set_appie(struct qtnf_vif *vif, u8 frame_type,
     const u8 *buf, size_t len)
{
 struct sk_buff *cmd_skb;
 int ret;

 if (len > QTNF_MAX_CMD_BUF_SIZE) {
  pr_warn("VIF%u.%u: %u frame is too big: %zu\n", vif->mac->macid,
   vif->vifid, frame_type, len);
  return -E2BIG;
 }

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_MGMT_SET_APPIE,
         sizeof(struct qlink_cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_cmd_tlv_ie_set_add(cmd_skb, frame_type, buf, len);

 qtnf_bus_lock(vif->mac->bus);
 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
