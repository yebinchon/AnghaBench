
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {scalar_t__ res_id; struct dlm_ls* res_ls; } ;
struct dlm_ls {int ls_recover_idr_lock; int ls_recover_list_count; int ls_recover_idr; } ;


 int dlm_put_rsb (struct dlm_rsb*) ;
 int idr_remove (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void recover_idr_del(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;

 spin_lock(&ls->ls_recover_idr_lock);
 idr_remove(&ls->ls_recover_idr, r->res_id);
 r->res_id = 0;
 ls->ls_recover_list_count--;
 spin_unlock(&ls->ls_recover_idr_lock);

 dlm_put_rsb(r);
}
