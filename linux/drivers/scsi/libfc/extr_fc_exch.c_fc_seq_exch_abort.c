
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {int ex_lock; } ;


 int fc_exch_abort_locked (struct fc_exch*,unsigned int) ;
 struct fc_exch* fc_seq_exch (struct fc_seq const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int fc_seq_exch_abort(const struct fc_seq *req_sp, unsigned int timer_msec)
{
 struct fc_exch *ep;
 int error;

 ep = fc_seq_exch(req_sp);
 spin_lock_bh(&ep->ex_lock);
 error = fc_exch_abort_locked(ep, timer_msec);
 spin_unlock_bh(&ep->ex_lock);
 return error;
}
