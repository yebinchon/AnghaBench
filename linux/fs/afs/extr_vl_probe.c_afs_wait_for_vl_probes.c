
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wait_queue_entry {int dummy; } ;
struct afs_vlserver_list {int nr_servers; int preferred; TYPE_1__* servers; } ;
struct TYPE_4__ {unsigned int rtt; scalar_t__ responded; } ;
struct afs_vlserver {unsigned long flags; int probe_wq; TYPE_2__ probe; } ;
struct TYPE_3__ {struct afs_vlserver* server; } ;


 int AFS_VLSERVER_FL_PROBING ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 unsigned int UINT_MAX ;
 int __clear_bit (int,unsigned long*) ;
 int _enter (char*,int,unsigned long) ;
 int _leave (char*,int) ;
 int add_wait_queue (int *,struct wait_queue_entry*) ;
 int array_size (int,int) ;
 int current ;
 int init_waitqueue_entry (struct wait_queue_entry*,int ) ;
 int kfree (struct wait_queue_entry*) ;
 struct wait_queue_entry* kmalloc (int ,int ) ;
 int remove_wait_queue (int *,struct wait_queue_entry*) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ test_bit (int,unsigned long*) ;

int afs_wait_for_vl_probes(struct afs_vlserver_list *vllist,
      unsigned long untried)
{
 struct wait_queue_entry *waits;
 struct afs_vlserver *server;
 unsigned int rtt = UINT_MAX;
 bool have_responders = 0;
 int pref = -1, i;

 _enter("%u,%lx", vllist->nr_servers, untried);


 for (i = 0; i < vllist->nr_servers; i++) {
  if (test_bit(i, &untried)) {
   server = vllist->servers[i].server;
   if (!test_bit(AFS_VLSERVER_FL_PROBING, &server->flags))
    __clear_bit(i, &untried);
   if (server->probe.responded)
    have_responders = 1;
  }
 }
 if (have_responders || !untried)
  return 0;

 waits = kmalloc(array_size(vllist->nr_servers, sizeof(*waits)), GFP_KERNEL);
 if (!waits)
  return -ENOMEM;

 for (i = 0; i < vllist->nr_servers; i++) {
  if (test_bit(i, &untried)) {
   server = vllist->servers[i].server;
   init_waitqueue_entry(&waits[i], current);
   add_wait_queue(&server->probe_wq, &waits[i]);
  }
 }

 for (;;) {
  bool still_probing = 0;

  set_current_state(TASK_INTERRUPTIBLE);
  for (i = 0; i < vllist->nr_servers; i++) {
   if (test_bit(i, &untried)) {
    server = vllist->servers[i].server;
    if (server->probe.responded)
     goto stop;
    if (test_bit(AFS_VLSERVER_FL_PROBING, &server->flags))
     still_probing = 1;
   }
  }

  if (!still_probing || signal_pending(current))
   goto stop;
  schedule();
 }

stop:
 set_current_state(TASK_RUNNING);

 for (i = 0; i < vllist->nr_servers; i++) {
  if (test_bit(i, &untried)) {
   server = vllist->servers[i].server;
   if (server->probe.responded &&
       server->probe.rtt < rtt) {
    pref = i;
    rtt = server->probe.rtt;
   }

   remove_wait_queue(&server->probe_wq, &waits[i]);
  }
 }

 kfree(waits);

 if (pref == -1 && signal_pending(current))
  return -ERESTARTSYS;

 if (pref >= 0)
  vllist->preferred = pref;

 _leave(" = 0 [%u]", pref);
 return 0;
}
