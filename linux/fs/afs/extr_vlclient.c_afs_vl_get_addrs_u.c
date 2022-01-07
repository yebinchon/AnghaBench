
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
struct afs_vl_cursor {int ac; int key; TYPE_1__* cell; } ;
struct afs_uuid__xdr {int dummy; } ;
struct afs_uuid {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;
struct afs_net {int dummy; } ;
struct afs_call {int * request; int max_lifespan; int * ret_alist; int key; } ;
struct afs_addr_list {int dummy; } ;
struct TYPE_4__ {void** node; void* clock_seq_low; void* clock_seq_hi_and_reserved; void* time_hi_and_version; void* time_mid; int time_low; } ;
struct afs_ListAddrByAttributes__xdr {TYPE_2__ uuid; scalar_t__ spare; scalar_t__ index; scalar_t__ ipaddr; void* Mask; } ;
typedef int __be32 ;
struct TYPE_3__ {struct afs_net* net; } ;


 int AFS_VLADDR_UUID ;
 int AFS_VL_MAX_LIFESPAN ;
 int ENOMEM ;
 struct afs_addr_list* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int VLGETADDRSU ;
 int _enter (char*) ;
 int afs_RXVLGetAddrsU ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,int,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 scalar_t__ afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (int ) ;
 int ntohs (int ) ;
 int trace_afs_make_vl_call (struct afs_call*) ;

struct afs_addr_list *afs_vl_get_addrs_u(struct afs_vl_cursor *vc,
      const uuid_t *uuid)
{
 struct afs_ListAddrByAttributes__xdr *r;
 const struct afs_uuid *u = (const struct afs_uuid *)uuid;
 struct afs_call *call;
 struct afs_net *net = vc->cell->net;
 __be32 *bp;
 int i;

 _enter("");

 call = afs_alloc_flat_call(net, &afs_RXVLGetAddrsU,
       sizeof(__be32) + sizeof(struct afs_ListAddrByAttributes__xdr),
       sizeof(struct afs_uuid__xdr) + 3 * sizeof(__be32));
 if (!call)
  return ERR_PTR(-ENOMEM);

 call->key = vc->key;
 call->ret_alist = ((void*)0);
 call->max_lifespan = AFS_VL_MAX_LIFESPAN;


 bp = call->request;
 *bp++ = htonl(VLGETADDRSU);
 r = (struct afs_ListAddrByAttributes__xdr *)bp;
 r->Mask = htonl(AFS_VLADDR_UUID);
 r->ipaddr = 0;
 r->index = 0;
 r->spare = 0;
 r->uuid.time_low = u->time_low;
 r->uuid.time_mid = htonl(ntohs(u->time_mid));
 r->uuid.time_hi_and_version = htonl(ntohs(u->time_hi_and_version));
 r->uuid.clock_seq_hi_and_reserved = htonl(u->clock_seq_hi_and_reserved);
 r->uuid.clock_seq_low = htonl(u->clock_seq_low);
 for (i = 0; i < 6; i++)
  r->uuid.node[i] = htonl(u->node[i]);

 trace_afs_make_vl_call(call);
 afs_make_call(&vc->ac, call, GFP_KERNEL);
 return (struct afs_addr_list *)afs_wait_for_call_to_complete(call, &vc->ac);
}
