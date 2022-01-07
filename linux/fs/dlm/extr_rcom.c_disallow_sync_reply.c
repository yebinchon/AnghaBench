
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_rcom_spin; int ls_flags; } ;


 int LSFL_RCOM_READY ;
 int LSFL_RCOM_WAIT ;
 int clear_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void disallow_sync_reply(struct dlm_ls *ls)
{
 spin_lock(&ls->ls_rcom_spin);
 clear_bit(LSFL_RCOM_WAIT, &ls->ls_flags);
 clear_bit(LSFL_RCOM_READY, &ls->ls_flags);
 spin_unlock(&ls->ls_rcom_spin);
}
