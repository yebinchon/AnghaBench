
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uuid_t ;
struct in6_addr {int dummy; } ;
struct afs_vl_cursor {int ac; int key; TYPE_1__* cell; } ;
struct afs_net {int dummy; } ;
struct afs_call {int * request; int max_lifespan; int * ret_alist; int key; } ;
struct afs_addr_list {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct afs_net* net; } ;


 int AFS_VL_MAX_LIFESPAN ;
 int ENOMEM ;
 struct afs_addr_list* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int YFS_SERVER_UUID ;
 int YVLGETENDPOINTS ;
 int _enter (char*) ;
 int afs_YFSVLGetEndpoints ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 scalar_t__ afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (int ) ;
 int memcpy (int *,int const*,int) ;
 int trace_afs_make_vl_call (struct afs_call*) ;

struct afs_addr_list *afs_yfsvl_get_endpoints(struct afs_vl_cursor *vc,
           const uuid_t *uuid)
{
 struct afs_call *call;
 struct afs_net *net = vc->cell->net;
 __be32 *bp;

 _enter("");

 call = afs_alloc_flat_call(net, &afs_YFSVLGetEndpoints,
       sizeof(__be32) * 2 + sizeof(*uuid),
       sizeof(struct in6_addr) + sizeof(__be32) * 3);
 if (!call)
  return ERR_PTR(-ENOMEM);

 call->key = vc->key;
 call->ret_alist = ((void*)0);
 call->max_lifespan = AFS_VL_MAX_LIFESPAN;


 bp = call->request;
 *bp++ = htonl(YVLGETENDPOINTS);
 *bp++ = htonl(YFS_SERVER_UUID);
 memcpy(bp, uuid, sizeof(*uuid));

 trace_afs_make_vl_call(call);
 afs_make_call(&vc->ac, call, GFP_KERNEL);
 return (struct afs_addr_list *)afs_wait_for_call_to_complete(call, &vc->ac);
}
