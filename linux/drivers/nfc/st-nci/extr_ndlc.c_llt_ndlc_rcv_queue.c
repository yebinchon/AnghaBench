
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int* data; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct llt_ndlc {int t2_active; int t1_active; int ndev; int t1_timer; int t2_timer; TYPE_1__ ack_pending_q; TYPE_1__ rcv_q; } ;


 int NDLC_TIMER_T1 ;
 int NDLC_TIMER_T1_WAIT ;

 int PCB_SYNC_MASK ;


 int PCB_TYPE_DATAFRAME ;
 int PCB_TYPE_MASK ;
 int PCB_TYPE_SUPERVISOR ;
 int del_timer_sync (int *) ;
 unsigned long jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int llt_ndlc_requeue_data_pending (struct llt_ndlc*) ;
 int llt_ndlc_send_queue (struct llt_ndlc*) ;
 int mod_timer (int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int nci_recv_frame (int ,struct sk_buff*) ;
 int pr_debug (char*,scalar_t__) ;
 struct sk_buff* skb_dequeue (TYPE_1__*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void llt_ndlc_rcv_queue(struct llt_ndlc *ndlc)
{
 struct sk_buff *skb;
 u8 pcb;
 unsigned long time_sent;

 if (ndlc->rcv_q.qlen)
  pr_debug("rcvQlen=%d\n", ndlc->rcv_q.qlen);

 while ((skb = skb_dequeue(&ndlc->rcv_q)) != ((void*)0)) {
  pcb = skb->data[0];
  skb_pull(skb, 1);
  if ((pcb & PCB_TYPE_MASK) == PCB_TYPE_SUPERVISOR) {
   switch (pcb & PCB_SYNC_MASK) {
   case 130:
    skb = skb_dequeue(&ndlc->ack_pending_q);
    kfree_skb(skb);
    del_timer_sync(&ndlc->t1_timer);
    del_timer_sync(&ndlc->t2_timer);
    ndlc->t2_active = 0;
    ndlc->t1_active = 0;
    break;
   case 129:
    llt_ndlc_requeue_data_pending(ndlc);
    llt_ndlc_send_queue(ndlc);

    time_sent = jiffies;
    ndlc->t1_active = 1;
    mod_timer(&ndlc->t1_timer, time_sent +
     msecs_to_jiffies(NDLC_TIMER_T1));
    break;
   case 128:
    time_sent = jiffies;
    ndlc->t1_active = 1;
    mod_timer(&ndlc->t1_timer, time_sent +
       msecs_to_jiffies(NDLC_TIMER_T1_WAIT));
    break;
   default:
    kfree_skb(skb);
    break;
   }
  } else if ((pcb & PCB_TYPE_MASK) == PCB_TYPE_DATAFRAME) {
   nci_recv_frame(ndlc->ndev, skb);
  } else {
   kfree_skb(skb);
  }
 }
}
