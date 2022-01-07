
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_recover {scalar_t__ seq; } ;
struct dlm_ls {unsigned long long ls_recover_dir_sent_res; int ls_recover_dir_sent_msg; int ls_recoverd_active; int ls_generation; scalar_t__ ls_recover_locks_in; } ;


 int DLM_RS_DIR ;
 int DLM_RS_DONE ;
 int DLM_RS_LOCKS ;
 int DLM_RS_NODES ;
 int dlm_adjust_timeouts (struct dlm_ls*) ;
 int dlm_callback_resume (struct dlm_ls*) ;
 int dlm_callback_suspend (struct dlm_ls*) ;
 int dlm_clear_members_gone (struct dlm_ls*) ;
 int dlm_clear_toss (struct dlm_ls*) ;
 int dlm_create_root_list (struct dlm_ls*) ;
 int dlm_lsop_recover_done (struct dlm_ls*) ;
 scalar_t__ dlm_no_directory (struct dlm_ls*) ;
 int dlm_process_requestqueue (struct dlm_ls*) ;
 int dlm_purge_requestqueue (struct dlm_ls*) ;
 int dlm_recover_dir_nodeid (struct dlm_ls*) ;
 int dlm_recover_directory (struct dlm_ls*) ;
 int dlm_recover_directory_wait (struct dlm_ls*) ;
 int dlm_recover_done_wait (struct dlm_ls*) ;
 int dlm_recover_grant (struct dlm_ls*) ;
 int dlm_recover_locks (struct dlm_ls*) ;
 int dlm_recover_locks_wait (struct dlm_ls*) ;
 int dlm_recover_masters (struct dlm_ls*) ;
 int dlm_recover_members (struct dlm_ls*,struct dlm_recover*,int*) ;
 int dlm_recover_members_wait (struct dlm_ls*) ;
 int dlm_recover_purge (struct dlm_ls*) ;
 int dlm_recover_rsbs (struct dlm_ls*) ;
 int dlm_recover_waiters_post (struct dlm_ls*) ;
 int dlm_recover_waiters_pre (struct dlm_ls*) ;
 int dlm_recovery_stopped (struct dlm_ls*) ;
 int dlm_release_root_list (struct dlm_ls*) ;
 int dlm_set_recover_status (struct dlm_ls*,int ) ;
 int enable_locking (struct dlm_ls*,scalar_t__) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int log_rinfo (struct dlm_ls*,char*,unsigned long long,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ls_recover(struct dlm_ls *ls, struct dlm_recover *rv)
{
 unsigned long start;
 int error, neg = 0;

 log_rinfo(ls, "dlm_recover %llu", (unsigned long long)rv->seq);

 mutex_lock(&ls->ls_recoverd_active);

 dlm_callback_suspend(ls);

 dlm_clear_toss(ls);






 dlm_create_root_list(ls);





 error = dlm_recover_members(ls, rv, &neg);
 if (error) {
  log_rinfo(ls, "dlm_recover_members error %d", error);
  goto fail;
 }

 dlm_recover_dir_nodeid(ls);

 ls->ls_recover_dir_sent_res = 0;
 ls->ls_recover_dir_sent_msg = 0;
 ls->ls_recover_locks_in = 0;

 dlm_set_recover_status(ls, DLM_RS_NODES);

 error = dlm_recover_members_wait(ls);
 if (error) {
  log_rinfo(ls, "dlm_recover_members_wait error %d", error);
  goto fail;
 }

 start = jiffies;






 error = dlm_recover_directory(ls);
 if (error) {
  log_rinfo(ls, "dlm_recover_directory error %d", error);
  goto fail;
 }

 dlm_set_recover_status(ls, DLM_RS_DIR);

 error = dlm_recover_directory_wait(ls);
 if (error) {
  log_rinfo(ls, "dlm_recover_directory_wait error %d", error);
  goto fail;
 }

 log_rinfo(ls, "dlm_recover_directory %u out %u messages",
    ls->ls_recover_dir_sent_res, ls->ls_recover_dir_sent_msg);







 dlm_recover_waiters_pre(ls);

 error = dlm_recovery_stopped(ls);
 if (error)
  goto fail;

 if (neg || dlm_no_directory(ls)) {




  dlm_recover_purge(ls);






  error = dlm_recover_masters(ls);
  if (error) {
   log_rinfo(ls, "dlm_recover_masters error %d", error);
   goto fail;
  }





  error = dlm_recover_locks(ls);
  if (error) {
   log_rinfo(ls, "dlm_recover_locks error %d", error);
   goto fail;
  }

  dlm_set_recover_status(ls, DLM_RS_LOCKS);

  error = dlm_recover_locks_wait(ls);
  if (error) {
   log_rinfo(ls, "dlm_recover_locks_wait error %d", error);
   goto fail;
  }

  log_rinfo(ls, "dlm_recover_locks %u in",
     ls->ls_recover_locks_in);







  dlm_recover_rsbs(ls);
 } else {





  dlm_set_recover_status(ls, DLM_RS_LOCKS);

  error = dlm_recover_locks_wait(ls);
  if (error) {
   log_rinfo(ls, "dlm_recover_locks_wait error %d", error);
   goto fail;
  }
 }

 dlm_release_root_list(ls);







 dlm_purge_requestqueue(ls);

 dlm_set_recover_status(ls, DLM_RS_DONE);

 error = dlm_recover_done_wait(ls);
 if (error) {
  log_rinfo(ls, "dlm_recover_done_wait error %d", error);
  goto fail;
 }

 dlm_clear_members_gone(ls);

 dlm_adjust_timeouts(ls);

 dlm_callback_resume(ls);

 error = enable_locking(ls, rv->seq);
 if (error) {
  log_rinfo(ls, "enable_locking error %d", error);
  goto fail;
 }

 error = dlm_process_requestqueue(ls);
 if (error) {
  log_rinfo(ls, "dlm_process_requestqueue error %d", error);
  goto fail;
 }

 error = dlm_recover_waiters_post(ls);
 if (error) {
  log_rinfo(ls, "dlm_recover_waiters_post error %d", error);
  goto fail;
 }

 dlm_recover_grant(ls);

 log_rinfo(ls, "dlm_recover %llu generation %u done: %u ms",
    (unsigned long long)rv->seq, ls->ls_generation,
    jiffies_to_msecs(jiffies - start));
 mutex_unlock(&ls->ls_recoverd_active);

 dlm_lsop_recover_done(ls);
 return 0;

 fail:
 dlm_release_root_list(ls);
 log_rinfo(ls, "dlm_recover %llu error %d",
    (unsigned long long)rv->seq, error);
 mutex_unlock(&ls->ls_recoverd_active);
 return error;
}
