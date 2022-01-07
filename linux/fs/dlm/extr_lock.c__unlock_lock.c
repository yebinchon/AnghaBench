
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int do_unlock (struct dlm_rsb*,struct dlm_lkb*) ;
 int do_unlock_effects (struct dlm_rsb*,struct dlm_lkb*,int) ;
 scalar_t__ is_remote (struct dlm_rsb*) ;
 int send_unlock (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int _unlock_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error;

 if (is_remote(r)) {

  error = send_unlock(r, lkb);
 } else {
  error = do_unlock(r, lkb);


  do_unlock_effects(r, lkb, error);
 }

 return error;
}
