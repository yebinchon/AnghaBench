
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; int len; } ;
struct qtnf_bus {int fw_state; } ;
struct TYPE_4__ {int len; } ;
struct qlink_resp {int result; TYPE_2__ mhdr; } ;
struct TYPE_3__ {int len; } ;
struct qlink_cmd {TYPE_1__ mhdr; int vifid; int macid; int cmd_id; } ;


 int EFAULT ;
 int ENODEV ;
 scalar_t__ QLINK_CMD_FW_INIT ;
 scalar_t__ WARN_ON (int) ;
 int consume_skb (struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 size_t le16_to_cpu (int ) ;
 int pr_debug (char*,int ,int ,scalar_t__) ;
 int pr_warn (char*,int ,int ,scalar_t__,int) ;
 int qtnf_cmd_check_reply_header (struct qlink_resp*,scalar_t__,int ,int ,size_t) ;
 int qtnf_cmd_resp_result_decode (size_t) ;
 int qtnf_fw_is_up (struct qtnf_bus*) ;
 int qtnf_trans_send_cmd_with_resp (struct qtnf_bus*,struct sk_buff*,struct sk_buff**) ;

__attribute__((used)) static int qtnf_cmd_send_with_reply(struct qtnf_bus *bus,
        struct sk_buff *cmd_skb,
        struct sk_buff **response_skb,
        size_t const_resp_size,
        size_t *var_resp_size)
{
 struct qlink_cmd *cmd;
 struct qlink_resp *resp = ((void*)0);
 struct sk_buff *resp_skb = ((void*)0);
 u16 cmd_id;
 u8 mac_id;
 u8 vif_id;
 int ret;

 cmd = (struct qlink_cmd *)cmd_skb->data;
 cmd_id = le16_to_cpu(cmd->cmd_id);
 mac_id = cmd->macid;
 vif_id = cmd->vifid;
 cmd->mhdr.len = cpu_to_le16(cmd_skb->len);

 pr_debug("VIF%u.%u cmd=0x%.4X\n", mac_id, vif_id, cmd_id);

 if (!qtnf_fw_is_up(bus) && cmd_id != QLINK_CMD_FW_INIT) {
  pr_warn("VIF%u.%u: drop cmd 0x%.4X in fw state %d\n",
   mac_id, vif_id, cmd_id, bus->fw_state);
  dev_kfree_skb(cmd_skb);
  return -ENODEV;
 }

 ret = qtnf_trans_send_cmd_with_resp(bus, cmd_skb, &resp_skb);
 if (ret)
  goto out;

 if (WARN_ON(!resp_skb || !resp_skb->data)) {
  ret = -EFAULT;
  goto out;
 }

 resp = (struct qlink_resp *)resp_skb->data;
 ret = qtnf_cmd_check_reply_header(resp, cmd_id, mac_id, vif_id,
       const_resp_size);
 if (ret)
  goto out;


 if (response_skb && var_resp_size)
  *var_resp_size = le16_to_cpu(resp->mhdr.len) - const_resp_size;

out:
 if (response_skb)
  *response_skb = resp_skb;
 else
  consume_skb(resp_skb);

 if (!ret && resp)
  return qtnf_cmd_resp_result_decode(le16_to_cpu(resp->result));

 pr_warn("VIF%u.%u: cmd 0x%.4X failed: %d\n",
  mac_id, vif_id, cmd_id, ret);

 return ret;
}
