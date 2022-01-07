
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_waitqueue; int res_convertqueue; int res_grantqueue; struct dlm_ls* res_ls; } ;
struct dlm_ls {int dummy; } ;


 int purge_mstcpy_list (struct dlm_ls*,struct dlm_rsb*,int *) ;

void dlm_purge_mstcpy_locks(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;

 purge_mstcpy_list(ls, r, &r->res_grantqueue);
 purge_mstcpy_list(ls, r, &r->res_convertqueue);
 purge_mstcpy_list(ls, r, &r->res_waitqueue);
}
