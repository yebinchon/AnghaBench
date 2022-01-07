
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_server {int addr6_link; int addr4_link; int proc_link; int uuid_rb; int usage; struct afs_server* gc_next; } ;
struct afs_net {int fs_addr_lock; int fs_lock; int fs_servers; } ;


 int afs_destroy_server (struct afs_net*,struct afs_server*) ;
 int afs_server_trace_gc ;
 int atomic_try_cmpxchg (int *,int*,int ) ;
 int hlist_del_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int rb_erase (int *,int *) ;
 int trace_afs_server (struct afs_server*,int,int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

__attribute__((used)) static void afs_gc_servers(struct afs_net *net, struct afs_server *gc_list)
{
 struct afs_server *server;
 bool deleted;
 int usage;

 while ((server = gc_list)) {
  gc_list = server->gc_next;

  write_seqlock(&net->fs_lock);
  usage = 1;
  deleted = atomic_try_cmpxchg(&server->usage, &usage, 0);
  trace_afs_server(server, usage, afs_server_trace_gc);
  if (deleted) {
   rb_erase(&server->uuid_rb, &net->fs_servers);
   hlist_del_rcu(&server->proc_link);
  }
  write_sequnlock(&net->fs_lock);

  if (deleted) {
   write_seqlock(&net->fs_addr_lock);
   if (!hlist_unhashed(&server->addr4_link))
    hlist_del_rcu(&server->addr4_link);
   if (!hlist_unhashed(&server->addr6_link))
    hlist_del_rcu(&server->addr6_link);
   write_sequnlock(&net->fs_addr_lock);
   afs_destroy_server(net, server);
  }
 }
}
