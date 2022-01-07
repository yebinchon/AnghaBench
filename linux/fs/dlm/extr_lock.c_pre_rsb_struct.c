
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {int res_hashchain; } ;
struct dlm_ls {int ls_new_rsb_count; int ls_new_rsb_spin; int ls_new_rsb; } ;
struct TYPE_2__ {int ci_new_rsb_count; } ;


 int ENOMEM ;
 struct dlm_rsb* dlm_allocate_rsb (struct dlm_ls*) ;
 TYPE_1__ dlm_config ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pre_rsb_struct(struct dlm_ls *ls)
{
 struct dlm_rsb *r1, *r2;
 int count = 0;

 spin_lock(&ls->ls_new_rsb_spin);
 if (ls->ls_new_rsb_count > dlm_config.ci_new_rsb_count / 2) {
  spin_unlock(&ls->ls_new_rsb_spin);
  return 0;
 }
 spin_unlock(&ls->ls_new_rsb_spin);

 r1 = dlm_allocate_rsb(ls);
 r2 = dlm_allocate_rsb(ls);

 spin_lock(&ls->ls_new_rsb_spin);
 if (r1) {
  list_add(&r1->res_hashchain, &ls->ls_new_rsb);
  ls->ls_new_rsb_count++;
 }
 if (r2) {
  list_add(&r2->res_hashchain, &ls->ls_new_rsb);
  ls->ls_new_rsb_count++;
 }
 count = ls->ls_new_rsb_count;
 spin_unlock(&ls->ls_new_rsb_spin);

 if (!count)
  return -ENOMEM;
 return 0;
}
