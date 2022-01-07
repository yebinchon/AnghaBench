
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct TYPE_5__ {int qlen; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct llt_ndlc {int hard_fault; int t1_active; int t2_active; int t2_timer; int t1_timer; TYPE_2__ ack_pending_q; int phy_id; TYPE_1__* ops; TYPE_3__ send_q; } ;
struct TYPE_4__ {int (* write ) (int ,struct sk_buff*) ;} ;


 int NDLC_DUMP_SKB (char*,struct sk_buff*) ;
 int NDLC_TIMER_T1 ;
 int NDLC_TIMER_T2 ;
 unsigned long jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int pr_debug (char*,scalar_t__,int ) ;
 struct sk_buff* skb_dequeue (TYPE_3__*) ;
 int skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static void llt_ndlc_send_queue(struct llt_ndlc *ndlc)
{
 struct sk_buff *skb;
 int r;
 unsigned long time_sent;

 if (ndlc->send_q.qlen)
  pr_debug("sendQlen=%d unackQlen=%d\n",
    ndlc->send_q.qlen, ndlc->ack_pending_q.qlen);

 while (ndlc->send_q.qlen) {
  skb = skb_dequeue(&ndlc->send_q);
  NDLC_DUMP_SKB("ndlc frame written", skb);
  r = ndlc->ops->write(ndlc->phy_id, skb);
  if (r < 0) {
   ndlc->hard_fault = r;
   break;
  }
  time_sent = jiffies;
  *(unsigned long *)skb->cb = time_sent;

  skb_queue_tail(&ndlc->ack_pending_q, skb);


  ndlc->t1_active = 1;
  mod_timer(&ndlc->t1_timer, time_sent +
   msecs_to_jiffies(NDLC_TIMER_T1));

  ndlc->t2_active = 1;
  mod_timer(&ndlc->t2_timer, time_sent +
   msecs_to_jiffies(NDLC_TIMER_T2));
 }
}
