
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bfa_timer_s {scalar_t__ timeout; int arg; int (* timercb ) (int ) ;int qe; } ;
struct bfa_timer_mod_s {struct list_head timer_q; } ;


 scalar_t__ BFA_TIMER_FREQ ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int bfa_q_deq (struct list_head*,struct bfa_timer_s**) ;
 struct list_head* bfa_q_next (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 int stub1 (int ) ;

void
bfa_timer_beat(struct bfa_timer_mod_s *mod)
{
 struct list_head *qh = &mod->timer_q;
 struct list_head *qe, *qe_next;
 struct bfa_timer_s *elem;
 struct list_head timedout_q;

 INIT_LIST_HEAD(&timedout_q);

 qe = bfa_q_next(qh);

 while (qe != qh) {
  qe_next = bfa_q_next(qe);

  elem = (struct bfa_timer_s *) qe;
  if (elem->timeout <= BFA_TIMER_FREQ) {
   elem->timeout = 0;
   list_del(&elem->qe);
   list_add_tail(&elem->qe, &timedout_q);
  } else {
   elem->timeout -= BFA_TIMER_FREQ;
  }

  qe = qe_next;
 }




 while (!list_empty(&timedout_q)) {
  bfa_q_deq(&timedout_q, &elem);
  elem->timercb(elem->arg);
 }
}
