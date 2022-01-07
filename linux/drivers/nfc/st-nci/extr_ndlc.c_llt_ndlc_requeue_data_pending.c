
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;
struct llt_ndlc {int send_q; int ack_pending_q; } ;


 int PCB_DATAFRAME_RETRANSMIT_MASK ;
 int PCB_DATAFRAME_RETRANSMIT_YES ;
 int PCB_SUPERVISOR_RETRANSMIT_MASK ;
 int PCB_SUPERVISOR_RETRANSMIT_YES ;

 int PCB_TYPE_MASK ;

 int kfree_skb (struct sk_buff*) ;
 int pr_err (char*,int) ;
 struct sk_buff* skb_dequeue_tail (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static void llt_ndlc_requeue_data_pending(struct llt_ndlc *ndlc)
{
 struct sk_buff *skb;
 u8 pcb;

 while ((skb = skb_dequeue_tail(&ndlc->ack_pending_q))) {
  pcb = skb->data[0];
  switch (pcb & PCB_TYPE_MASK) {
  case 128:
   skb->data[0] = (pcb & ~PCB_SUPERVISOR_RETRANSMIT_MASK) |
    PCB_SUPERVISOR_RETRANSMIT_YES;
   break;
  case 129:
   skb->data[0] = (pcb & ~PCB_DATAFRAME_RETRANSMIT_MASK) |
    PCB_DATAFRAME_RETRANSMIT_YES;
   break;
  default:
   pr_err("UNKNOWN Packet Control Byte=%d\n", pcb);
   kfree_skb(skb);
   continue;
  }
  skb_queue_head(&ndlc->send_q, skb);
 }
}
