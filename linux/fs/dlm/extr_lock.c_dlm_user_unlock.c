
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ sb_lvbptr; } ;
struct dlm_user_args {TYPE_2__* proc; int user_lksb; scalar_t__ castparam; TYPE_1__ lksb; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_ownqueue; struct dlm_user_args* lkb_ua; } ;
struct dlm_args {int dummy; } ;
struct TYPE_4__ {int locks_spin; int unlocking; } ;


 int DLM_EUNLOCK ;
 int DLM_LKF_FORCEUNLOCK ;
 int DLM_USER_LVB_LEN ;
 int EBUSY ;
 int dlm_lock_recovery (struct dlm_ls*) ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int dlm_unlock_recovery (struct dlm_ls*) ;
 int find_lkb (struct dlm_ls*,int,struct dlm_lkb**) ;
 int kfree (struct dlm_user_args*) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int memcpy (scalar_t__,char*,int ) ;
 int set_unlock_args (int,struct dlm_user_args*,struct dlm_args*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_lock (struct dlm_ls*,struct dlm_lkb*,struct dlm_args*) ;

int dlm_user_unlock(struct dlm_ls *ls, struct dlm_user_args *ua_tmp,
      uint32_t flags, uint32_t lkid, char *lvb_in)
{
 struct dlm_lkb *lkb;
 struct dlm_args args;
 struct dlm_user_args *ua;
 int error;

 dlm_lock_recovery(ls);

 error = find_lkb(ls, lkid, &lkb);
 if (error)
  goto out;

 ua = lkb->lkb_ua;

 if (lvb_in && ua->lksb.sb_lvbptr)
  memcpy(ua->lksb.sb_lvbptr, lvb_in, DLM_USER_LVB_LEN);
 if (ua_tmp->castparam)
  ua->castparam = ua_tmp->castparam;
 ua->user_lksb = ua_tmp->user_lksb;

 error = set_unlock_args(flags, ua, &args);
 if (error)
  goto out_put;

 error = unlock_lock(ls, lkb, &args);

 if (error == -DLM_EUNLOCK)
  error = 0;

 if (error == -EBUSY && (flags & DLM_LKF_FORCEUNLOCK))
  error = 0;
 if (error)
  goto out_put;

 spin_lock(&ua->proc->locks_spin);

 if (!list_empty(&lkb->lkb_ownqueue))
  list_move(&lkb->lkb_ownqueue, &ua->proc->unlocking);
 spin_unlock(&ua->proc->locks_spin);
 out_put:
 dlm_put_lkb(lkb);
 out:
 dlm_unlock_recovery(ls);
 kfree(ua_tmp);
 return error;
}
