
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_recover_list; struct dlm_ls* res_ls; } ;
struct dlm_ls {int ls_recover_list_lock; int ls_recover_list_count; int ls_recover_list; } ;


 int dlm_hold_rsb (struct dlm_rsb*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void recover_list_add(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;

 spin_lock(&ls->ls_recover_list_lock);
 if (list_empty(&r->res_recover_list)) {
  list_add_tail(&r->res_recover_list, &ls->ls_recover_list);
  ls->ls_recover_list_count++;
  dlm_hold_rsb(r);
 }
 spin_unlock(&ls->ls_recover_list_lock);
}
