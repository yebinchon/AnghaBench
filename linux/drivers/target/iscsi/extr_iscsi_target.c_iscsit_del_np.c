
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_np {int enabled; TYPE_1__* np_transport; int np_sockaddr; int np_list; int * np_thread; int np_thread_lock; int np_thread_state; scalar_t__ np_exports; } ;
struct TYPE_2__ {int name; int (* iscsit_free_np ) (struct iscsi_np*) ;} ;


 int ISCSI_NP_THREAD_SHUTDOWN ;
 int SIGINT ;
 int iscsit_put_transport (TYPE_1__*) ;
 int kfree (struct iscsi_np*) ;
 int kthread_stop (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int np_lock ;
 int pr_debug (char*,int *,int ) ;
 int send_sig (int ,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_np*) ;

int iscsit_del_np(struct iscsi_np *np)
{
 spin_lock_bh(&np->np_thread_lock);
 np->np_exports--;
 if (np->np_exports) {
  np->enabled = 1;
  spin_unlock_bh(&np->np_thread_lock);
  return 0;
 }
 np->np_thread_state = ISCSI_NP_THREAD_SHUTDOWN;
 spin_unlock_bh(&np->np_thread_lock);

 if (np->np_thread) {




  send_sig(SIGINT, np->np_thread, 1);
  kthread_stop(np->np_thread);
  np->np_thread = ((void*)0);
 }

 np->np_transport->iscsit_free_np(np);

 mutex_lock(&np_lock);
 list_del(&np->np_list);
 mutex_unlock(&np_lock);

 pr_debug("CORE[0] - Removed Network Portal: %pISpc on %s\n",
  &np->np_sockaddr, np->np_transport->name);

 iscsit_put_transport(np->np_transport);
 kfree(np);
 return 0;
}
