
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_msg_header {int type; int len; } ;
struct qlink_event {int dummy; } ;
struct qlink_cmd {int dummy; } ;


 int EFAULT ;
 int EINVAL ;


 int dev_kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int pr_warn (char*,int,...) ;
 int qtnf_trans_event_enqueue (struct qtnf_bus*,struct sk_buff*) ;
 int qtnf_trans_signal_cmdresp (struct qtnf_bus*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int qtnf_trans_handle_rx_ctl_packet(struct qtnf_bus *bus, struct sk_buff *skb)
{
 const struct qlink_msg_header *header = (void *)skb->data;
 int ret = -1;

 if (unlikely(skb->len < sizeof(*header))) {
  pr_warn("packet is too small: %u\n", skb->len);
  dev_kfree_skb(skb);
  return -EINVAL;
 }

 if (unlikely(skb->len != le16_to_cpu(header->len))) {
  pr_warn("cmd reply length mismatch: %u != %u\n",
   skb->len, le16_to_cpu(header->len));
  dev_kfree_skb(skb);
  return -EFAULT;
 }

 switch (le16_to_cpu(header->type)) {
 case 129:
  if (unlikely(skb->len < sizeof(struct qlink_cmd))) {
   pr_warn("cmd reply too short: %u\n", skb->len);
   dev_kfree_skb(skb);
   break;
  }

  qtnf_trans_signal_cmdresp(bus, skb);
  break;
 case 128:
  if (unlikely(skb->len < sizeof(struct qlink_event))) {
   pr_warn("event too short: %u\n", skb->len);
   dev_kfree_skb(skb);
   break;
  }

  ret = qtnf_trans_event_enqueue(bus, skb);
  break;
 default:
  pr_warn("unknown packet type: %x\n", le16_to_cpu(header->type));
  dev_kfree_skb(skb);
  break;
 }

 return ret;
}
