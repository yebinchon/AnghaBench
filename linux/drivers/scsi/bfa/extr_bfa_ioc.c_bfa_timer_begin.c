
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_timer_s {unsigned int timeout; void (* timercb ) (void*) ;int qe; void* arg; } ;
struct bfa_timer_mod_s {int timer_q; } ;


 int WARN_ON (int ) ;
 int bfa_q_is_on_q (int *,struct bfa_timer_s*) ;
 int list_add_tail (int *,int *) ;

void
bfa_timer_begin(struct bfa_timer_mod_s *mod, struct bfa_timer_s *timer,
      void (*timercb) (void *), void *arg, unsigned int timeout)
{

 WARN_ON(timercb == ((void*)0));
 WARN_ON(bfa_q_is_on_q(&mod->timer_q, timer));

 timer->timeout = timeout;
 timer->timercb = timercb;
 timer->arg = arg;

 list_add_tail(&timer->qe, &mod->timer_q);
}
