
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct list_head {int dummy; } ;
struct ceph_snap_realm {int num_prior_parent_snaps; int num_snaps; scalar_t__ seq; scalar_t__ parent_since; int ino; struct ceph_snap_context* cached_context; int dirty_item; int prior_parent_snaps; int snaps; struct ceph_snap_realm* parent; } ;
struct ceph_snap_context {int num_snaps; scalar_t__ seq; scalar_t__* snaps; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int SIZE_MAX ;
 struct ceph_snap_context* ceph_create_snap_context (int,int ) ;
 int ceph_put_snap_context (struct ceph_snap_context*) ;
 int cmpu64_rev ;
 int dout (char*,int ,struct ceph_snap_realm*,struct ceph_snap_context*,scalar_t__,unsigned int) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (scalar_t__*,int ,int) ;
 int pr_err (char*,int ,struct ceph_snap_realm*,int) ;
 int sort (scalar_t__*,int,int,int ,int *) ;

__attribute__((used)) static int build_snap_context(struct ceph_snap_realm *realm,
         struct list_head* dirty_realms)
{
 struct ceph_snap_realm *parent = realm->parent;
 struct ceph_snap_context *snapc;
 int err = 0;
 u32 num = realm->num_prior_parent_snaps + realm->num_snaps;






 if (parent) {
  if (!parent->cached_context) {
   err = build_snap_context(parent, dirty_realms);
   if (err)
    goto fail;
  }
  num += parent->cached_context->num_snaps;
 }





 if (realm->cached_context &&
     realm->cached_context->seq == realm->seq &&
     (!parent ||
      realm->cached_context->seq >= parent->cached_context->seq)) {
  dout("build_snap_context %llx %p: %p seq %lld (%u snaps)"
       " (unchanged)\n",
       realm->ino, realm, realm->cached_context,
       realm->cached_context->seq,
       (unsigned int)realm->cached_context->num_snaps);
  return 0;
 }


 err = -ENOMEM;
 if (num > (SIZE_MAX - sizeof(*snapc)) / sizeof(u64))
  goto fail;
 snapc = ceph_create_snap_context(num, GFP_NOFS);
 if (!snapc)
  goto fail;


 num = 0;
 snapc->seq = realm->seq;
 if (parent) {
  u32 i;



  for (i = 0; i < parent->cached_context->num_snaps; i++)
   if (parent->cached_context->snaps[i] >=
       realm->parent_since)
    snapc->snaps[num++] =
     parent->cached_context->snaps[i];
  if (parent->cached_context->seq > snapc->seq)
   snapc->seq = parent->cached_context->seq;
 }
 memcpy(snapc->snaps + num, realm->snaps,
        sizeof(u64)*realm->num_snaps);
 num += realm->num_snaps;
 memcpy(snapc->snaps + num, realm->prior_parent_snaps,
        sizeof(u64)*realm->num_prior_parent_snaps);
 num += realm->num_prior_parent_snaps;

 sort(snapc->snaps, num, sizeof(u64), cmpu64_rev, ((void*)0));
 snapc->num_snaps = num;
 dout("build_snap_context %llx %p: %p seq %lld (%u snaps)\n",
      realm->ino, realm, snapc, snapc->seq,
      (unsigned int) snapc->num_snaps);

 ceph_put_snap_context(realm->cached_context);
 realm->cached_context = snapc;

 list_add_tail(&realm->dirty_item, dirty_realms);
 return 0;

fail:




 if (realm->cached_context) {
  ceph_put_snap_context(realm->cached_context);
  realm->cached_context = ((void*)0);
 }
 pr_err("build_snap_context %llx %p fail %d\n", realm->ino,
        realm, err);
 return err;
}
