
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llt_ndlc {int sm_work; int rcv_q; int hard_fault; } ;


 int EREMOTEIO ;
 int NDLC_DUMP_SKB (char*,struct sk_buff*) ;
 int ndlc_close (struct llt_ndlc*) ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void ndlc_recv(struct llt_ndlc *ndlc, struct sk_buff *skb)
{
 if (skb == ((void*)0)) {
  pr_err("NULL Frame -> link is dead\n");
  ndlc->hard_fault = -EREMOTEIO;
  ndlc_close(ndlc);
 } else {
  NDLC_DUMP_SKB("incoming frame", skb);
  skb_queue_tail(&ndlc->rcv_q, skb);
 }

 schedule_work(&ndlc->sm_work);
}
