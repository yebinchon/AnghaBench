
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int vifid; } ;
struct qlink_cmd_frame_tx {void* flags; void* freq; int cookie; } ;
struct TYPE_2__ {int bus; int macid; } ;


 int E2BIG ;
 int ENOMEM ;
 int QLINK_CMD_SEND_FRAME ;
 int QTNF_MAX_CMD_BUF_SIZE ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int pr_warn (char*,int ,int ,size_t) ;
 int qtnf_bus_lock (int ) ;
 int qtnf_bus_unlock (int ) ;
 struct sk_buff* qtnf_cmd_alloc_new_cmdskb (int ,int ,int ,int) ;
 int qtnf_cmd_send (int ,struct sk_buff*) ;
 int qtnf_cmd_skb_put_buffer (struct sk_buff*,int const*,size_t) ;

int qtnf_cmd_send_frame(struct qtnf_vif *vif, u32 cookie, u16 flags,
   u16 freq, const u8 *buf, size_t len)
{
 struct sk_buff *cmd_skb;
 struct qlink_cmd_frame_tx *cmd;
 int ret;

 if (sizeof(*cmd) + len > QTNF_MAX_CMD_BUF_SIZE) {
  pr_warn("VIF%u.%u: frame is too big: %zu\n", vif->mac->macid,
   vif->vifid, len);
  return -E2BIG;
 }

 cmd_skb = qtnf_cmd_alloc_new_cmdskb(vif->mac->macid, vif->vifid,
         QLINK_CMD_SEND_FRAME,
         sizeof(*cmd));
 if (!cmd_skb)
  return -ENOMEM;

 qtnf_bus_lock(vif->mac->bus);

 cmd = (struct qlink_cmd_frame_tx *)cmd_skb->data;
 cmd->cookie = cpu_to_le32(cookie);
 cmd->freq = cpu_to_le16(freq);
 cmd->flags = cpu_to_le16(flags);

 if (len && buf)
  qtnf_cmd_skb_put_buffer(cmd_skb, buf, len);

 ret = qtnf_cmd_send(vif->mac->bus, cmd_skb);
 if (ret)
  goto out;

out:
 qtnf_bus_unlock(vif->mac->bus);

 return ret;
}
