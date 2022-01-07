
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dlm_rsb {int res_dir_nodeid; int res_master_nodeid; int res_nodeid; int res_hash; int res_bucket; void* res_toss_time; int res_ref; int res_name; int res_first_lkid; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_1__* ls_rsbtbl; int ls_num_nodes; } ;
struct TYPE_2__ {int lock; int toss; int keep; } ;


 int DLM_LU_ADD ;
 int DLM_LU_MATCH ;
 unsigned int DLM_LU_RECOVER_DIR ;
 unsigned int DLM_LU_RECOVER_MASTER ;
 int DLM_RESNAME_MAXLEN ;
 int EAGAIN ;
 int EINVAL ;
 int RSB_NEW_MASTER ;
 int dlm_dump_rsb (struct dlm_rsb*) ;
 int dlm_free_rsb (struct dlm_rsb*) ;
 int dlm_hash2nodeid (struct dlm_ls*,int) ;
 scalar_t__ dlm_is_removed (struct dlm_ls*,int) ;
 int dlm_our_nodeid () ;
 int dlm_search_rsb_tree (int *,char*,int,struct dlm_rsb**) ;
 int get_rsb_struct (struct dlm_ls*,char*,int,struct dlm_rsb**) ;
 int hold_rsb (struct dlm_rsb*) ;
 int jhash (char*,int,int ) ;
 void* jiffies ;
 int kref_init (int *) ;
 int lock_rsb (struct dlm_rsb*) ;
 int log_debug (struct dlm_ls*,char*,int,int ,int ) ;
 int log_error (struct dlm_ls*,char*,...) ;
 int log_limit (struct dlm_ls*,char*,int,unsigned int,int,int ,...) ;
 int pre_rsb_struct (struct dlm_ls*) ;
 int put_rsb (struct dlm_rsb*) ;
 int rsb_insert (struct dlm_rsb*,int *) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_rsb (struct dlm_rsb*) ;

int dlm_master_lookup(struct dlm_ls *ls, int from_nodeid, char *name, int len,
        unsigned int flags, int *r_nodeid, int *result)
{
 struct dlm_rsb *r = ((void*)0);
 uint32_t hash, b;
 int from_master = (flags & DLM_LU_RECOVER_DIR);
 int fix_master = (flags & DLM_LU_RECOVER_MASTER);
 int our_nodeid = dlm_our_nodeid();
 int dir_nodeid, error, toss_list = 0;

 if (len > DLM_RESNAME_MAXLEN)
  return -EINVAL;

 if (from_nodeid == our_nodeid) {
  log_error(ls, "dlm_master_lookup from our_nodeid %d flags %x",
     our_nodeid, flags);
  return -EINVAL;
 }

 hash = jhash(name, len, 0);
 b = hash & (ls->ls_rsbtbl_size - 1);

 dir_nodeid = dlm_hash2nodeid(ls, hash);
 if (dir_nodeid != our_nodeid) {
  log_error(ls, "dlm_master_lookup from %d dir %d our %d h %x %d",
     from_nodeid, dir_nodeid, our_nodeid, hash,
     ls->ls_num_nodes);
  *r_nodeid = -1;
  return -EINVAL;
 }

 retry:
 error = pre_rsb_struct(ls);
 if (error < 0)
  return error;

 spin_lock(&ls->ls_rsbtbl[b].lock);
 error = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].keep, name, len, &r);
 if (!error) {



  hold_rsb(r);
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  lock_rsb(r);
  goto found;
 }

 error = dlm_search_rsb_tree(&ls->ls_rsbtbl[b].toss, name, len, &r);
 if (error)
  goto not_found;




 toss_list = 1;
 found:
 if (r->res_dir_nodeid != our_nodeid) {

  log_error(ls, "dlm_master_lookup res_dir %d our %d %s",
     r->res_dir_nodeid, our_nodeid, r->res_name);
  r->res_dir_nodeid = our_nodeid;
 }

 if (fix_master && dlm_is_removed(ls, r->res_master_nodeid)) {





  r->res_master_nodeid = from_nodeid;
  r->res_nodeid = from_nodeid;
  rsb_set_flag(r, RSB_NEW_MASTER);

  if (toss_list) {

   log_error(ls, "dlm_master_lookup fix_master on toss");
   dlm_dump_rsb(r);
  }
 }

 if (from_master && (r->res_master_nodeid != from_nodeid)) {




  log_limit(ls, "dlm_master_lookup from_master %d "
     "master_nodeid %d res_nodeid %d first %x %s",
     from_nodeid, r->res_master_nodeid, r->res_nodeid,
     r->res_first_lkid, r->res_name);

  if (r->res_master_nodeid == our_nodeid) {
   log_error(ls, "from_master %d our_master", from_nodeid);
   dlm_dump_rsb(r);
   goto out_found;
  }

  r->res_master_nodeid = from_nodeid;
  r->res_nodeid = from_nodeid;
  rsb_set_flag(r, RSB_NEW_MASTER);
 }

 if (!r->res_master_nodeid) {



  log_debug(ls, "dlm_master_lookup master 0 to %d first %x %s",
     from_nodeid, r->res_first_lkid, r->res_name);
  r->res_master_nodeid = from_nodeid;
  r->res_nodeid = from_nodeid;
 }

 if (!from_master && !fix_master &&
     (r->res_master_nodeid == from_nodeid)) {




  log_limit(ls, "dlm_master_lookup from master %d flags %x "
     "first %x %s", from_nodeid, flags,
     r->res_first_lkid, r->res_name);
 }

 out_found:
 *r_nodeid = r->res_master_nodeid;
 if (result)
  *result = DLM_LU_MATCH;

 if (toss_list) {
  r->res_toss_time = jiffies;

  spin_unlock(&ls->ls_rsbtbl[b].lock);
 } else {

  unlock_rsb(r);
  put_rsb(r);
 }
 return 0;

 not_found:
 error = get_rsb_struct(ls, name, len, &r);
 if (error == -EAGAIN) {
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  goto retry;
 }
 if (error)
  goto out_unlock;

 r->res_hash = hash;
 r->res_bucket = b;
 r->res_dir_nodeid = our_nodeid;
 r->res_master_nodeid = from_nodeid;
 r->res_nodeid = from_nodeid;
 kref_init(&r->res_ref);
 r->res_toss_time = jiffies;

 error = rsb_insert(r, &ls->ls_rsbtbl[b].toss);
 if (error) {

  dlm_free_rsb(r);
  spin_unlock(&ls->ls_rsbtbl[b].lock);
  goto retry;
 }

 if (result)
  *result = DLM_LU_ADD;
 *r_nodeid = from_nodeid;
 error = 0;
 out_unlock:
 spin_unlock(&ls->ls_rsbtbl[b].lock);
 return error;
}
