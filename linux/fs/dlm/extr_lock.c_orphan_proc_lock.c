
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_orphans_mutex; int ls_orphans; } ;
struct dlm_lkb {int lkb_ua; int lkb_ownqueue; } ;
struct dlm_args {int dummy; } ;


 int DLM_ECANCEL ;
 int cancel_lock (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ;
 int hold_lkb (struct dlm_lkb*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_unlock_args (int ,int ,struct dlm_args*) ;

__attribute__((used)) static int orphan_proc_lock(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 struct dlm_args args;
 int error;

 hold_lkb(lkb);
 mutex_lock(&ls->ls_orphans_mutex);
 list_add_tail(&lkb->lkb_ownqueue, &ls->ls_orphans);
 mutex_unlock(&ls->ls_orphans_mutex);

 set_unlock_args(0, lkb->lkb_ua, &args);

 error = cancel_lock(ls, lkb, &args);
 if (error == -DLM_ECANCEL)
  error = 0;
 return error;
}
