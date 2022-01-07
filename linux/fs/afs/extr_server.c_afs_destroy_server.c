
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server {int rcu; int usage; int probe_outstanding; int flags; int addresses; } ;
struct afs_net {int dummy; } ;
struct afs_addr_list {int preferred; } ;
struct afs_addr_cursor {int error; int index; struct afs_addr_list* alist; } ;


 int AFS_SERVER_FL_MAY_HAVE_CB ;
 int afs_dec_servers_outstanding (struct afs_net*) ;
 int afs_fs_give_up_all_callbacks (struct afs_net*,struct afs_server*,struct afs_addr_cursor*,int *) ;
 int afs_server_rcu ;
 int afs_server_trace_destroy ;
 int afs_server_trace_give_up_cb ;
 scalar_t__ atomic_read (int *) ;
 int call_rcu (int *,int ) ;
 struct afs_addr_list* rcu_access_pointer (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_afs_server (struct afs_server*,scalar_t__,int ) ;
 int wait_var_event (int *,int) ;

__attribute__((used)) static void afs_destroy_server(struct afs_net *net, struct afs_server *server)
{
 struct afs_addr_list *alist = rcu_access_pointer(server->addresses);
 struct afs_addr_cursor ac = {
  .alist = alist,
  .index = alist->preferred,
  .error = 0,
 };

 trace_afs_server(server, atomic_read(&server->usage),
    afs_server_trace_give_up_cb);

 if (test_bit(AFS_SERVER_FL_MAY_HAVE_CB, &server->flags))
  afs_fs_give_up_all_callbacks(net, server, &ac, ((void*)0));

 wait_var_event(&server->probe_outstanding,
         atomic_read(&server->probe_outstanding) == 0);

 trace_afs_server(server, atomic_read(&server->usage),
    afs_server_trace_destroy);
 call_rcu(&server->rcu, afs_server_rcu);
 afs_dec_servers_outstanding(net);
}
