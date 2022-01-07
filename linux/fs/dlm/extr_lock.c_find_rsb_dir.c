
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dlm_rsb {int res_master_nodeid; int res_nodeid; size_t res_hash; size_t res_bucket; int res_dir_nodeid; int res_name; int res_ref; int res_hashnode; scalar_t__ res_first_lkid; } ;
struct dlm_ls {TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int lock; int keep; int toss; } ;


 int EAGAIN ;
 int EBADR ;
 int ENOTBLK ;
 int RSB_MASTER_UNCERTAIN ;
 unsigned int R_RECEIVE_REQUEST ;
 unsigned int R_REQUEST ;
 int dlm_free_rsb (struct dlm_rsb*) ;
 int dlm_our_nodeid () ;
 int dlm_print_rsb (struct dlm_rsb*) ;
 int dlm_search_rsb_tree (int *,char*,int,struct dlm_rsb**) ;
 int get_rsb_struct (struct dlm_ls*,char*,int,struct dlm_rsb**) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int log_debug (struct dlm_ls*,char*,int,int,...) ;
 int log_error (struct dlm_ls*,char*,int,int,...) ;
 int pre_rsb_struct (struct dlm_ls*) ;
 int rb_erase (int *,int *) ;
 int rsb_clear_flag (struct dlm_rsb*,int ) ;
 int rsb_insert (struct dlm_rsb*,int *) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int find_rsb_dir(struct dlm_ls *ls, char *name, int len,
   uint32_t hash, uint32_t b,
   int dir_nodeid, int from_nodeid,
   unsigned int flags, struct dlm_rsb **r_ret)
{
 struct dlm_rsb *r = ((void*)0);
 int our_nodeid = dlm_our_nodeid();
 int from_local = 0;
 int from_other = 0;
 int from_dir = 0;
 int create = 0;
 int error;

 if (flags & R_RECEIVE_REQUEST) {
  if (from_nodeid == dir_nodeid)
   from_dir = 1;
  else
   from_other = 1;
 } else if (flags & R_REQUEST) {
  from_local = 1;
 }
 if (from_local || from_dir ||
     (from_other && (dir_nodeid == our_nodeid))) {
  create = 1;
 }

 retry:
 if (create) {
  error = pre_rsb_struct(ls);
  if (error < 0)
   goto out;
 }

 spin_lock(&ls->ls_rsbtbl[b].lock);

 error = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].keep, name, len, &r);
 if (error)
  goto do_toss;





 kref_get(&r->res_ref);
 error = 0;
 goto out_unlock;


 do_toss:
 error = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].toss, name, len, &r);
 if (error)
  goto do_new;
 if ((r->res_master_nodeid != our_nodeid) && from_other) {


  log_debug(ls, "find_rsb toss from_other %d master %d dir %d %s",
     from_nodeid, r->res_master_nodeid, dir_nodeid,
     r->res_name);
  error = -ENOTBLK;
  goto out_unlock;
 }

 if ((r->res_master_nodeid != our_nodeid) && from_dir) {

  log_error(ls, "find_rsb toss from_dir %d master %d",
     from_nodeid, r->res_master_nodeid);
  dlm_print_rsb(r);

  r->res_master_nodeid = our_nodeid;
  r->res_nodeid = 0;
  rsb_clear_flag(r, RSB_MASTER_UNCERTAIN);
  r->res_first_lkid = 0;
 }

 if (from_local && (r->res_master_nodeid != our_nodeid)) {


  rsb_set_flag(r, RSB_MASTER_UNCERTAIN);
  r->res_first_lkid = 0;
 }

 rb_erase(&r->res_hashnode, &ls->ls_rsbtbl[b].toss);
 error = rsb_insert(r, &ls->ls_rsbtbl[b].keep);
 goto out_unlock;


 do_new:




 if (error == -EBADR && !create)
  goto out_unlock;

 error = get_rsb_struct(ls, name, len, &r);
 if (error == -EAGAIN) {
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  goto retry;
 }
 if (error)
  goto out_unlock;

 r->res_hash = hash;
 r->res_bucket = b;
 r->res_dir_nodeid = dir_nodeid;
 kref_init(&r->res_ref);

 if (from_dir) {

  log_debug(ls, "find_rsb new from_dir %d recreate %s",
     from_nodeid, r->res_name);
  r->res_master_nodeid = our_nodeid;
  r->res_nodeid = 0;
  goto out_add;
 }

 if (from_other && (dir_nodeid != our_nodeid)) {

  log_error(ls, "find_rsb new from_other %d dir %d our %d %s",
     from_nodeid, dir_nodeid, our_nodeid, r->res_name);
  dlm_free_rsb(r);
  r = ((void*)0);
  error = -ENOTBLK;
  goto out_unlock;
 }

 if (from_other) {
  log_debug(ls, "find_rsb new from_other %d dir %d %s",
     from_nodeid, dir_nodeid, r->res_name);
 }

 if (dir_nodeid == our_nodeid) {


  r->res_master_nodeid = our_nodeid;
  r->res_nodeid = 0;
 } else {

  r->res_master_nodeid = 0;
  r->res_nodeid = -1;
 }

 out_add:
 error = rsb_insert(r, &ls->ls_rsbtbl[b].keep);
 out_unlock:
 spin_unlock(&ls->ls_rsbtbl[b].lock);
 out:
 *r_ret = r;
 return error;
}
