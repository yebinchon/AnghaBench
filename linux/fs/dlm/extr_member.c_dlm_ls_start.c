
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_recover {int nodes_count; struct dlm_recover* nodes; scalar_t__ seq; } ;
struct dlm_ls {int ls_recoverd_task; int ls_flags; int ls_recover_lock; struct dlm_recover* ls_recover_args; scalar_t__ ls_recover_seq; int ls_name; } ;
struct dlm_config_node {int nodes_count; struct dlm_config_node* nodes; scalar_t__ seq; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int LSFL_RECOVER_WORK ;
 int dlm_config_nodes (int ,struct dlm_recover**,int*) ;
 int dlm_locking_stopped (struct dlm_ls*) ;
 int kfree (struct dlm_recover*) ;
 struct dlm_recover* kzalloc (int,int ) ;
 int log_error (struct dlm_ls*,char*,...) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_process (int ) ;

int dlm_ls_start(struct dlm_ls *ls)
{
 struct dlm_recover *rv, *rv_old;
 struct dlm_config_node *nodes = ((void*)0);
 int error, count;

 rv = kzalloc(sizeof(*rv), GFP_NOFS);
 if (!rv)
  return -ENOMEM;

 error = dlm_config_nodes(ls->ls_name, &nodes, &count);
 if (error < 0)
  goto fail_rv;

 spin_lock(&ls->ls_recover_lock);



 if (!dlm_locking_stopped(ls)) {
  spin_unlock(&ls->ls_recover_lock);
  log_error(ls, "start ignored: lockspace running");
  error = -EINVAL;
  goto fail;
 }

 rv->nodes = nodes;
 rv->nodes_count = count;
 rv->seq = ++ls->ls_recover_seq;
 rv_old = ls->ls_recover_args;
 ls->ls_recover_args = rv;
 spin_unlock(&ls->ls_recover_lock);

 if (rv_old) {
  log_error(ls, "unused recovery %llx %d",
     (unsigned long long)rv_old->seq, rv_old->nodes_count);
  kfree(rv_old->nodes);
  kfree(rv_old);
 }

 set_bit(LSFL_RECOVER_WORK, &ls->ls_flags);
 wake_up_process(ls->ls_recoverd_task);
 return 0;

 fail:
 kfree(nodes);
 fail_rv:
 kfree(rv);
 return error;
}
