
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_name; int res_dir_nodeid; struct dlm_ls* res_ls; } ;
struct dlm_ls {int ls_remove_spin; scalar_t__ ls_remove_len; int ls_remove_name; } ;


 int log_debug (struct dlm_ls*,char*,int ,int ) ;
 int msleep (int) ;
 int rsb_cmp (struct dlm_rsb*,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void wait_pending_remove(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;
 restart:
 spin_lock(&ls->ls_remove_spin);
 if (ls->ls_remove_len &&
     !rsb_cmp(r, ls->ls_remove_name, ls->ls_remove_len)) {
  log_debug(ls, "delay lookup for remove dir %d %s",
       r->res_dir_nodeid, r->res_name);
  spin_unlock(&ls->ls_remove_spin);
  msleep(1);
  goto restart;
 }
 spin_unlock(&ls->ls_remove_spin);
}
