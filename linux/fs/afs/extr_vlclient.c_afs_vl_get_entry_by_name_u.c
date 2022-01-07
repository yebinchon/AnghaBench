
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_vldb_entry {int dummy; } ;
struct afs_vl_cursor {int ac; int key; TYPE_1__* cell; } ;
struct afs_uvldbentry__xdr {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_call {int * request; int max_lifespan; struct afs_vldb_entry* ret_vldb; int key; } ;
typedef int __be32 ;
struct TYPE_2__ {struct afs_net* net; } ;


 int AFS_VL_MAX_LIFESPAN ;
 int ENOMEM ;
 struct afs_vldb_entry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int VLGETENTRYBYNAMEU ;
 int _enter (char*) ;
 int afs_RXVLGetEntryByNameU ;
 struct afs_call* afs_alloc_flat_call (struct afs_net*,int *,size_t,int) ;
 int afs_make_call (int *,struct afs_call*,int ) ;
 scalar_t__ afs_wait_for_call_to_complete (struct afs_call*,int *) ;
 void* htonl (int) ;
 int kfree (struct afs_vldb_entry*) ;
 struct afs_vldb_entry* kzalloc (int,int ) ;
 int memcpy (int *,char const*,int) ;
 int memset (void*,int ,size_t) ;
 int trace_afs_make_vl_call (struct afs_call*) ;

struct afs_vldb_entry *afs_vl_get_entry_by_name_u(struct afs_vl_cursor *vc,
        const char *volname,
        int volnamesz)
{
 struct afs_vldb_entry *entry;
 struct afs_call *call;
 struct afs_net *net = vc->cell->net;
 size_t reqsz, padsz;
 __be32 *bp;

 _enter("");

 padsz = (4 - (volnamesz & 3)) & 3;
 reqsz = 8 + volnamesz + padsz;

 entry = kzalloc(sizeof(struct afs_vldb_entry), GFP_KERNEL);
 if (!entry)
  return ERR_PTR(-ENOMEM);

 call = afs_alloc_flat_call(net, &afs_RXVLGetEntryByNameU, reqsz,
       sizeof(struct afs_uvldbentry__xdr));
 if (!call) {
  kfree(entry);
  return ERR_PTR(-ENOMEM);
 }

 call->key = vc->key;
 call->ret_vldb = entry;
 call->max_lifespan = AFS_VL_MAX_LIFESPAN;


 bp = call->request;
 *bp++ = htonl(VLGETENTRYBYNAMEU);
 *bp++ = htonl(volnamesz);
 memcpy(bp, volname, volnamesz);
 if (padsz > 0)
  memset((void *)bp + volnamesz, 0, padsz);

 trace_afs_make_vl_call(call);
 afs_make_call(&vc->ac, call, GFP_KERNEL);
 return (struct afs_vldb_entry *)afs_wait_for_call_to_complete(call, &vc->ac);
}
