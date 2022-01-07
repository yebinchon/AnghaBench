
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;
struct dlm_args {int dummy; } ;


 int _unlock_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int hold_rsb (struct dlm_rsb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_unlock_args (struct dlm_lkb*,struct dlm_args*) ;

__attribute__((used)) static int unlock_lock(struct dlm_ls *ls, struct dlm_lkb *lkb,
         struct dlm_args *args)
{
 struct dlm_rsb *r;
 int error;

 r = lkb->lkb_resource;

 hold_rsb(r);
 lock_rsb(r);

 error = validate_unlock_args(lkb, args);
 if (error)
  goto out;

 error = _unlock_lock(r, lkb);
 out:
 unlock_rsb(r);
 put_rsb(r);
 return error;
}
