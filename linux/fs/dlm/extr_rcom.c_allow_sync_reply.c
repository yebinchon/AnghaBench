
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct dlm_ls {int ls_rcom_spin; int ls_flags; scalar_t__ ls_rcom_seq; } ;


 int LSFL_RCOM_WAIT ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void allow_sync_reply(struct dlm_ls *ls, uint64_t *new_seq)
{
 spin_lock(&ls->ls_rcom_spin);
 *new_seq = ++ls->ls_rcom_seq;
 set_bit(LSFL_RCOM_WAIT, &ls->ls_flags);
 spin_unlock(&ls->ls_rcom_spin);
}
