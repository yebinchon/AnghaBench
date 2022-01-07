
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_exch {int ex_lock; } ;


 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 struct fc_seq* fc_seq_start_next_locked (struct fc_seq*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct fc_seq *fc_seq_start_next(struct fc_seq *sp)
{
 struct fc_exch *ep = fc_seq_exch(sp);

 spin_lock_bh(&ep->ex_lock);
 sp = fc_seq_start_next_locked(sp);
 spin_unlock_bh(&ep->ex_lock);

 return sp;
}
