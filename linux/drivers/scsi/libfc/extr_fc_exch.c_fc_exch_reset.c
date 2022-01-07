
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {int esb_stat; int arg; int ex_lock; struct fc_seq seq; int ex_refcnt; int state; } ;


 int ERR_PTR (int ) ;
 int ESB_ST_REC_QUAL ;
 int FC_EX_CLOSED ;
 int FC_EX_RST_CLEANUP ;
 int atomic_dec (int *) ;
 int fc_exch_delete (struct fc_exch*) ;
 int fc_exch_done_locked (struct fc_exch*) ;
 int fc_exch_hold (struct fc_exch*) ;
 int fc_exch_release (struct fc_exch*) ;
 int fc_exch_timer_cancel (struct fc_exch*) ;
 int fc_invoke_resp (struct fc_exch*,struct fc_seq*,int ) ;
 int fc_seq_set_resp (struct fc_seq*,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_reset(struct fc_exch *ep)
{
 struct fc_seq *sp;
 int rc = 1;

 spin_lock_bh(&ep->ex_lock);
 ep->state |= FC_EX_RST_CLEANUP;
 fc_exch_timer_cancel(ep);
 if (ep->esb_stat & ESB_ST_REC_QUAL)
  atomic_dec(&ep->ex_refcnt);
 ep->esb_stat &= ~ESB_ST_REC_QUAL;
 sp = &ep->seq;
 rc = fc_exch_done_locked(ep);
 spin_unlock_bh(&ep->ex_lock);

 fc_exch_hold(ep);

 if (!rc)
  fc_exch_delete(ep);

 fc_invoke_resp(ep, sp, ERR_PTR(-FC_EX_CLOSED));
 fc_seq_set_resp(sp, ((void*)0), ep->arg);
 fc_exch_release(ep);
}
