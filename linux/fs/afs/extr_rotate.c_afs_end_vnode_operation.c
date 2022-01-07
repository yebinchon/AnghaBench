
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct afs_net {int dummy; } ;
struct TYPE_4__ {int abort_code; } ;
struct afs_fs_cursor {int error; TYPE_2__ ac; int server_list; int cbi; TYPE_1__* vnode; } ;
struct TYPE_3__ {int io_lock; } ;


 int EADDRNOTAVAIL ;
 int ECONNABORTED ;
 int EDESTADDRREQ ;
 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int afs_abort_to_error (int ) ;
 int afs_dump_edestaddrreq (struct afs_fs_cursor*) ;
 int afs_end_cursor (TYPE_2__*) ;
 int afs_put_cb_interest (struct afs_net*,int ) ;
 int afs_put_serverlist (struct afs_net*,int ) ;
 struct afs_net* afs_v2net (TYPE_1__*) ;
 int mutex_unlock (int *) ;

int afs_end_vnode_operation(struct afs_fs_cursor *fc)
{
 struct afs_net *net = afs_v2net(fc->vnode);

 if (fc->error == -EDESTADDRREQ ||
     fc->error == -EADDRNOTAVAIL ||
     fc->error == -ENETUNREACH ||
     fc->error == -EHOSTUNREACH)
  afs_dump_edestaddrreq(fc);

 mutex_unlock(&fc->vnode->io_lock);

 afs_end_cursor(&fc->ac);
 afs_put_cb_interest(net, fc->cbi);
 afs_put_serverlist(net, fc->server_list);

 if (fc->error == -ECONNABORTED)
  fc->error = afs_abort_to_error(fc->ac.abort_code);

 return fc->error;
}
