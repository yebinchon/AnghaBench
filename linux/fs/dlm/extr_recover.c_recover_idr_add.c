
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_id; struct dlm_ls* res_ls; } ;
struct dlm_ls {int ls_recover_idr_lock; int ls_recover_list_count; int ls_recover_idr; } ;


 int GFP_NOFS ;
 int GFP_NOWAIT ;
 int dlm_hold_rsb (struct dlm_rsb*) ;
 int idr_alloc (int *,struct dlm_rsb*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int recover_idr_add(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;
 int rv;

 idr_preload(GFP_NOFS);
 spin_lock(&ls->ls_recover_idr_lock);
 if (r->res_id) {
  rv = -1;
  goto out_unlock;
 }
 rv = idr_alloc(&ls->ls_recover_idr, r, 1, 0, GFP_NOWAIT);
 if (rv < 0)
  goto out_unlock;

 r->res_id = rv;
 ls->ls_recover_list_count++;
 dlm_hold_rsb(r);
 rv = 0;
out_unlock:
 spin_unlock(&ls->ls_recover_idr_lock);
 idr_preload_end();
 return rv;
}
