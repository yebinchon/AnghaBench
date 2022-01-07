
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct afs_server {int probe_lock; int probe_wq; int cb_break_lock; int cb_volumes; int fs_lock; scalar_t__ update_at; int uuid; int addr_version; int addresses; int debug_id; int usage; } ;
struct afs_net {int dummy; } ;
struct afs_addr_list {int version; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int RCU_INIT_POINTER (int ,struct afs_addr_list*) ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int afs_inc_servers_outstanding (struct afs_net*) ;
 int afs_server_debug_id ;
 int afs_server_trace_alloc ;
 scalar_t__ afs_server_update_delay ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ ktime_get_real_seconds () ;
 struct afs_server* kzalloc (int,int ) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 int trace_afs_server (struct afs_server*,int,int ) ;

__attribute__((used)) static struct afs_server *afs_alloc_server(struct afs_net *net,
        const uuid_t *uuid,
        struct afs_addr_list *alist)
{
 struct afs_server *server;

 _enter("");

 server = kzalloc(sizeof(struct afs_server), GFP_KERNEL);
 if (!server)
  goto enomem;

 atomic_set(&server->usage, 1);
 server->debug_id = atomic_inc_return(&afs_server_debug_id);
 RCU_INIT_POINTER(server->addresses, alist);
 server->addr_version = alist->version;
 server->uuid = *uuid;
 server->update_at = ktime_get_real_seconds() + afs_server_update_delay;
 rwlock_init(&server->fs_lock);
 INIT_HLIST_HEAD(&server->cb_volumes);
 rwlock_init(&server->cb_break_lock);
 init_waitqueue_head(&server->probe_wq);
 spin_lock_init(&server->probe_lock);

 afs_inc_servers_outstanding(net);
 trace_afs_server(server, 1, afs_server_trace_alloc);
 _leave(" = %p", server);
 return server;

enomem:
 _leave(" = NULL [nomem]");
 return ((void*)0);
}
