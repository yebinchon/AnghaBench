
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch {int ex_refcnt; int timeout_work; } ;


 int FC_EXCH_DBG (struct fc_exch*,char*) ;
 int atomic_dec (int *) ;
 scalar_t__ cancel_delayed_work (int *) ;

__attribute__((used)) static inline void fc_exch_timer_cancel(struct fc_exch *ep)
{
 if (cancel_delayed_work(&ep->timeout_work)) {
  FC_EXCH_DBG(ep, "Exchange timer canceled\n");
  atomic_dec(&ep->ex_refcnt);
 }
}
