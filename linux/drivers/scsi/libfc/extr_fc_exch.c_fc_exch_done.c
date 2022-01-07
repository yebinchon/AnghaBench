
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {int arg; int ex_lock; } ;


 int fc_exch_delete (struct fc_exch*) ;
 int fc_exch_done_locked (struct fc_exch*) ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 int fc_seq_set_resp (struct fc_seq*,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void fc_exch_done(struct fc_seq *sp)
{
 struct fc_exch *ep = fc_seq_exch(sp);
 int rc;

 spin_lock_bh(&ep->ex_lock);
 rc = fc_exch_done_locked(ep);
 spin_unlock_bh(&ep->ex_lock);

 fc_seq_set_resp(sp, ((void*)0), ep->arg);
 if (!rc)
  fc_exch_delete(ep);
}
