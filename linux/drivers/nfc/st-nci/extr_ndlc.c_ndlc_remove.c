
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llt_ndlc {int t2_active; int t1_active; int send_q; int rcv_q; int t2_timer; int t1_timer; int ndev; } ;


 int del_timer_sync (int *) ;
 int skb_queue_purge (int *) ;
 int st_nci_remove (int ) ;

void ndlc_remove(struct llt_ndlc *ndlc)
{
 st_nci_remove(ndlc->ndev);


 del_timer_sync(&ndlc->t1_timer);
 del_timer_sync(&ndlc->t2_timer);
 ndlc->t2_active = 0;
 ndlc->t1_active = 0;

 skb_queue_purge(&ndlc->rcv_q);
 skb_queue_purge(&ndlc->send_q);
}
