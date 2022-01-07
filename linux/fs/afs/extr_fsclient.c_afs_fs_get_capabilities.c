
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {unsigned int server_index; int upgrade; int async; int * request; int max_lifespan; int server; struct key* key; } ;
struct afs_addr_cursor {int dummy; } ;
typedef int __be32 ;


 int AFS_PROBE_MAX_LIFESPAN ;
 int ENOMEM ;
 struct afs_call* ERR_PTR (int ) ;
 int FSGETCAPABILITIES ;
 int GFP_NOFS ;
 int _enter (char*) ;
 int afs_RXFSGetCapabilities ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_get_server (struct afs_server*,int ) ;
 int afs_make_call (struct afs_addr_cursor*,struct afs_call*,int ) ;
 int afs_server_trace_get_caps ;
 int htonl (int ) ;
 int trace_afs_make_fs_call (struct afs_call*,int *) ;

struct afs_call *afs_fs_get_capabilities(struct afs_net *net,
      struct afs_server *server,
      struct afs_addr_cursor *ac,
      struct key *key,
      unsigned int server_index)
{
 struct afs_call *call;
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXFSGetCapabilities, 1 * 4, 16 * 4);
 if (!call)
  return ERR_PTR(-ENOMEM);

 call->key = key;
 call->server = afs_get_server(server, afs_server_trace_get_caps);
 call->server_index = server_index;
 call->upgrade = 1;
 call->async = 1;
 call->max_lifespan = AFS_PROBE_MAX_LIFESPAN;


 bp = call->request;
 *bp++ = htonl(FSGETCAPABILITIES);


 trace_afs_make_fs_call(call, ((void*)0));
 afs_make_call(ac, call, GFP_NOFS);
 return call;
}
