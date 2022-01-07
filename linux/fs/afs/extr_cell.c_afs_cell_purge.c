
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int cells_outstanding; int cells_timer; int cells_lock; int ws_cell; } ;
struct afs_cell {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_put_cell (struct afs_net*,struct afs_cell*) ;
 int afs_queue_cell_manager (struct afs_net*) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 scalar_t__ del_timer_sync (int *) ;
 struct afs_cell* rcu_access_pointer (int ) ;
 int wait_var_event (int *,int) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

void afs_cell_purge(struct afs_net *net)
{
 struct afs_cell *ws;

 _enter("");

 write_seqlock(&net->cells_lock);
 ws = rcu_access_pointer(net->ws_cell);
 RCU_INIT_POINTER(net->ws_cell, ((void*)0));
 write_sequnlock(&net->cells_lock);
 afs_put_cell(net, ws);

 _debug("del timer");
 if (del_timer_sync(&net->cells_timer))
  atomic_dec(&net->cells_outstanding);

 _debug("kick mgr");
 afs_queue_cell_manager(net);

 _debug("wait");
 wait_var_event(&net->cells_outstanding,
         !atomic_read(&net->cells_outstanding));
 _leave("");
}
