
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_4__ {int rtt; } ;
struct afs_server {TYPE_2__ probe; int probe_outstanding; int fs_lock; int addresses; int uuid; } ;
struct afs_net {int dummy; } ;
struct afs_error {int dummy; } ;
struct afs_call {int dummy; } ;
struct afs_addr_cursor {scalar_t__ index; int abort_code; TYPE_1__* alist; } ;
struct TYPE_3__ {scalar_t__ nr_addrs; } ;


 int IS_ERR (struct afs_call*) ;
 int PTR_ERR (struct afs_call*) ;
 int UINT_MAX ;
 int _enter (char*,int *) ;
 struct afs_call* afs_fs_get_capabilities (struct afs_net*,struct afs_server*,struct afs_addr_cursor*,struct key*,unsigned int) ;
 int afs_fs_probe_done (struct afs_server*) ;
 int afs_prioritise_error (struct afs_error*,int ,int ) ;
 int afs_put_call (struct afs_call*) ;
 int atomic_set (int *,scalar_t__) ;
 int lockdep_is_held (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_1__* rcu_dereference_protected (int ,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int afs_do_probe_fileserver(struct afs_net *net,
       struct afs_server *server,
       struct key *key,
       unsigned int server_index,
       struct afs_error *_e)
{
 struct afs_addr_cursor ac = {
  .index = 0,
 };
 struct afs_call *call;
 bool in_progress = 0;

 _enter("%pU", &server->uuid);

 read_lock(&server->fs_lock);
 ac.alist = rcu_dereference_protected(server->addresses,
          lockdep_is_held(&server->fs_lock));
 read_unlock(&server->fs_lock);

 atomic_set(&server->probe_outstanding, ac.alist->nr_addrs);
 memset(&server->probe, 0, sizeof(server->probe));
 server->probe.rtt = UINT_MAX;

 for (ac.index = 0; ac.index < ac.alist->nr_addrs; ac.index++) {
  call = afs_fs_get_capabilities(net, server, &ac, key, server_index);
  if (!IS_ERR(call)) {
   afs_put_call(call);
   in_progress = 1;
  } else {
   afs_prioritise_error(_e, PTR_ERR(call), ac.abort_code);
  }
 }

 if (!in_progress)
  afs_fs_probe_done(server);
 return in_progress;
}
