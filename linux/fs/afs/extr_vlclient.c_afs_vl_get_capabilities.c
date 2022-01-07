
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct afs_vlserver {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {unsigned int server_index; int upgrade; int async; int * request; int max_lifespan; int vlserver; struct key* key; } ;
struct afs_addr_cursor {int dummy; } ;
typedef int __be32 ;


 int AFS_PROBE_MAX_LIFESPAN ;
 int ENOMEM ;
 struct afs_call* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int VLGETCAPABILITIES ;
 int _enter (char*) ;
 int afs_RXVLGetCapabilities ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_get_vlserver (struct afs_vlserver*) ;
 int afs_make_call (struct afs_addr_cursor*,struct afs_call*,int ) ;
 int htonl (int ) ;
 int trace_afs_make_vl_call (struct afs_call*) ;

struct afs_call *afs_vl_get_capabilities(struct afs_net *net,
      struct afs_addr_cursor *ac,
      struct key *key,
      struct afs_vlserver *server,
      unsigned int server_index)
{
 struct afs_call *call;
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXVLGetCapabilities, 1 * 4, 16 * 4);
 if (!call)
  return ERR_PTR(-ENOMEM);

 call->key = key;
 call->vlserver = afs_get_vlserver(server);
 call->server_index = server_index;
 call->upgrade = 1;
 call->async = 1;
 call->max_lifespan = AFS_PROBE_MAX_LIFESPAN;


 bp = call->request;
 *bp++ = htonl(VLGETCAPABILITIES);


 trace_afs_make_vl_call(call);
 afs_make_call(ac, call, GFP_KERNEL);
 return call;
}
