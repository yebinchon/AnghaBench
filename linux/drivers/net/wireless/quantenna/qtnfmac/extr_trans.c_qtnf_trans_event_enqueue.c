
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct qtnf_qlink_transport {scalar_t__ event_queue_max_len; int event_queue; } ;
struct qtnf_bus {int event_work; int workqueue; struct qtnf_qlink_transport trans; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int pr_warn (char*) ;
 int queue_work (int ,int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int qtnf_trans_event_enqueue(struct qtnf_bus *bus, struct sk_buff *skb)
{
 struct qtnf_qlink_transport *trans = &bus->trans;

 if (likely(skb_queue_len(&trans->event_queue) <
     trans->event_queue_max_len)) {
  skb_queue_tail(&trans->event_queue, skb);
  queue_work(bus->workqueue, &bus->event_work);
 } else {
  pr_warn("event dropped due to queue overflow\n");
  dev_kfree_skb(skb);
  return -1;
 }

 return 0;
}
