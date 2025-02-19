
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_master_nodeid; int res_nodeid; } ;
struct dlm_rcom {int rc_result; scalar_t__ rc_id; } ;
struct dlm_ls {int ls_wait_general; } ;


 int dlm_our_nodeid () ;
 int lock_rsb (struct dlm_rsb*) ;
 int log_error (struct dlm_ls*,char*,unsigned long long) ;
 int recover_idr_del (struct dlm_rsb*) ;
 scalar_t__ recover_idr_empty (struct dlm_ls*) ;
 struct dlm_rsb* recover_idr_find (struct dlm_ls*,scalar_t__) ;
 int set_new_master (struct dlm_rsb*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int wake_up (int *) ;

int dlm_recover_master_reply(struct dlm_ls *ls, struct dlm_rcom *rc)
{
 struct dlm_rsb *r;
 int ret_nodeid, new_master;

 r = recover_idr_find(ls, rc->rc_id);
 if (!r) {
  log_error(ls, "dlm_recover_master_reply no id %llx",
     (unsigned long long)rc->rc_id);
  goto out;
 }

 ret_nodeid = rc->rc_result;

 if (ret_nodeid == dlm_our_nodeid())
  new_master = 0;
 else
  new_master = ret_nodeid;

 lock_rsb(r);
 r->res_master_nodeid = ret_nodeid;
 r->res_nodeid = new_master;
 set_new_master(r);
 unlock_rsb(r);
 recover_idr_del(r);

 if (recover_idr_empty(ls))
  wake_up(&ls->ls_wait_general);
 out:
 return 0;
}
