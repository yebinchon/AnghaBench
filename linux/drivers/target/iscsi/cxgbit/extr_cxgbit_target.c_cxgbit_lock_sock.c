
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_sock {int lock_owner; int lock; scalar_t__ snd_win; scalar_t__ snd_una; int write_seq; } ;


 scalar_t__ before (int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool cxgbit_lock_sock(struct cxgbit_sock *csk)
{
 spin_lock_bh(&csk->lock);

 if (before(csk->write_seq, csk->snd_una + csk->snd_win))
  csk->lock_owner = 1;

 spin_unlock_bh(&csk->lock);

 return csk->lock_owner;
}
