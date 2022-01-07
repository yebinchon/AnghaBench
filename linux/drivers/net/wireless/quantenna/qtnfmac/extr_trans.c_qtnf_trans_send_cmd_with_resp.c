
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct qtnf_cmd_ctl_node {int waiting_for_resp; int resp_lock; struct sk_buff* resp_skb; int cmd_resp_completion; int seq_num; } ;
struct TYPE_2__ {struct qtnf_cmd_ctl_node curr_cmd; } ;
struct qtnf_bus {TYPE_1__ trans; } ;
struct qlink_cmd {int seq_num; } ;


 int EFAULT ;
 int EINTR ;
 int ETIMEDOUT ;
 int QTNF_DEF_SYNC_CMD_TIMEOUT ;
 int WARN (struct sk_buff*,char*) ;
 int cpu_to_le16 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int qtnf_bus_control_tx (struct qtnf_bus*,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

int qtnf_trans_send_cmd_with_resp(struct qtnf_bus *bus, struct sk_buff *cmd_skb,
      struct sk_buff **response_skb)
{
 struct qtnf_cmd_ctl_node *ctl_node = &bus->trans.curr_cmd;
 struct qlink_cmd *cmd = (void *)cmd_skb->data;
 int ret = 0;
 long status;
 bool resp_not_handled = 1;
 struct sk_buff *resp_skb = ((void*)0);

 if (unlikely(!response_skb)) {
  dev_kfree_skb(cmd_skb);
  return -EFAULT;
 }

 spin_lock(&ctl_node->resp_lock);
 ctl_node->seq_num++;
 cmd->seq_num = cpu_to_le16(ctl_node->seq_num);
 WARN(ctl_node->resp_skb, "qtnfmac: response skb not empty\n");
 ctl_node->waiting_for_resp = 1;
 spin_unlock(&ctl_node->resp_lock);

 ret = qtnf_bus_control_tx(bus, cmd_skb);
 dev_kfree_skb(cmd_skb);

 if (unlikely(ret))
  goto out;

 status = wait_for_completion_interruptible_timeout(
      &ctl_node->cmd_resp_completion,
      QTNF_DEF_SYNC_CMD_TIMEOUT);

 spin_lock(&ctl_node->resp_lock);
 resp_not_handled = ctl_node->waiting_for_resp;
 resp_skb = ctl_node->resp_skb;
 ctl_node->resp_skb = ((void*)0);
 ctl_node->waiting_for_resp = 0;
 spin_unlock(&ctl_node->resp_lock);

 if (unlikely(status <= 0)) {
  if (status == 0) {
   ret = -ETIMEDOUT;
   pr_err("response timeout\n");
  } else {
   ret = -EINTR;
   pr_debug("interrupted\n");
  }
 }

 if (unlikely(!resp_skb || resp_not_handled)) {
  if (!ret)
   ret = -EFAULT;

  goto out;
 }

 ret = 0;
 *response_skb = resp_skb;

out:
 if (unlikely(resp_skb && resp_not_handled))
  dev_kfree_skb(resp_skb);

 return ret;
}
