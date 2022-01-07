
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int servers_outstanding; int fs_timer; } ;


 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_queue_server_manager (struct afs_net*) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 scalar_t__ del_timer_sync (int *) ;
 int wait_var_event (int *,int) ;

void afs_purge_servers(struct afs_net *net)
{
 _enter("");

 if (del_timer_sync(&net->fs_timer))
  atomic_dec(&net->servers_outstanding);

 afs_queue_server_manager(net);

 _debug("wait");
 wait_var_event(&net->servers_outstanding,
         !atomic_read(&net->servers_outstanding));
 _leave("");
}
