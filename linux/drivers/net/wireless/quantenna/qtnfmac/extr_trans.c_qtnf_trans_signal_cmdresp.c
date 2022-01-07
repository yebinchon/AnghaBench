
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_cmd_ctl_node {int waiting_for_resp; scalar_t__ const seq_num; int resp_lock; int cmd_resp_completion; struct sk_buff* resp_skb; } ;
struct TYPE_2__ {struct qtnf_cmd_ctl_node curr_cmd; } ;
struct qtnf_bus {TYPE_1__ trans; } ;
struct qlink_resp {int seq_num; } ;


 int complete (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qtnf_trans_signal_cmdresp(struct qtnf_bus *bus, struct sk_buff *skb)
{
 struct qtnf_cmd_ctl_node *ctl_node = &bus->trans.curr_cmd;
 const struct qlink_resp *resp = (const struct qlink_resp *)skb->data;
 const u16 recvd_seq_num = le16_to_cpu(resp->seq_num);

 spin_lock(&ctl_node->resp_lock);

 if (unlikely(!ctl_node->waiting_for_resp)) {
  pr_err("unexpected response\n");
  goto out_err;
 }

 if (unlikely(recvd_seq_num != ctl_node->seq_num)) {
  pr_err("seq num mismatch\n");
  goto out_err;
 }

 ctl_node->resp_skb = skb;
 ctl_node->waiting_for_resp = 0;

 spin_unlock(&ctl_node->resp_lock);

 complete(&ctl_node->cmd_resp_completion);
 return;

out_err:
 spin_unlock(&ctl_node->resp_lock);
 dev_kfree_skb(skb);
}
