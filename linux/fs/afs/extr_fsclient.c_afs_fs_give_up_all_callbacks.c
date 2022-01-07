
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {int * request; struct key* key; } ;
struct afs_addr_cursor {int dummy; } ;
typedef int __be32 ;


 int ENOMEM ;
 int FSGIVEUPALLCALLBACKS ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSGiveUpAllCallBacks ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int ) ;
 int afs_make_call (struct afs_addr_cursor*,struct afs_call*,int ) ;
 int afs_wait_for_call_to_complete (struct afs_call*,struct afs_addr_cursor*) ;
 int htonl (int ) ;

int afs_fs_give_up_all_callbacks(struct afs_net *net,
     struct afs_server *server,
     struct afs_addr_cursor *ac,
     struct key *key)
{
 struct afs_call *call;
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXFSGiveUpAllCallBacks, 1 * 4, 0);
 if (!call)
  return -ENOMEM;

 call->key = key;


 bp = call->request;
 *bp++ = htonl(FSGIVEUPALLCALLBACKS);


 afs_make_call(ac, call, GFP_NOFS);
 return afs_wait_for_call_to_complete(call, ac);
}
