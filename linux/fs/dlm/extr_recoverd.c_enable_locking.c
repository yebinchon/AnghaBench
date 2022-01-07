
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct dlm_ls {scalar_t__ ls_recover_seq; int ls_recv_active; int ls_recover_lock; int ls_flags; int ls_in_recovery; } ;


 int EINTR ;
 int LSFL_RECOVER_LOCK ;
 int LSFL_RUNNING ;
 int clear_bit (int ,int *) ;
 int down_write (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int enable_locking(struct dlm_ls *ls, uint64_t seq)
{
 int error = -EINTR;

 down_write(&ls->ls_recv_active);

 spin_lock(&ls->ls_recover_lock);
 if (ls->ls_recover_seq == seq) {
  set_bit(LSFL_RUNNING, &ls->ls_flags);

  up_write(&ls->ls_in_recovery);
  clear_bit(LSFL_RECOVER_LOCK, &ls->ls_flags);
  error = 0;
 }
 spin_unlock(&ls->ls_recover_lock);

 up_write(&ls->ls_recv_active);
 return error;
}
