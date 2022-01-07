
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_inode_info {int i_ceph_flags; int i_cap_snaps; } ;
struct TYPE_2__ {scalar_t__ tid; } ;
struct ceph_cap_snap {int ci_item; int context; TYPE_1__ cap_flush; int follows; int dirty_pages; int writing; int need_flush; } ;


 int BUG_ON (int) ;
 int CEPH_I_FLUSH_SNAPS ;
 int ceph_put_cap_snap (struct ceph_cap_snap*) ;
 int ceph_put_snap_context (int ) ;
 int dout (char*,struct ceph_cap_snap*,int ) ;
 int list_del (int *) ;
 int list_is_last (int *,int *) ;

__attribute__((used)) static int ceph_try_drop_cap_snap(struct ceph_inode_info *ci,
      struct ceph_cap_snap *capsnap)
{
 if (!capsnap->need_flush &&
     !capsnap->writing && !capsnap->dirty_pages) {
  dout("dropping cap_snap %p follows %llu\n",
       capsnap, capsnap->follows);
  BUG_ON(capsnap->cap_flush.tid > 0);
  ceph_put_snap_context(capsnap->context);
  if (!list_is_last(&capsnap->ci_item, &ci->i_cap_snaps))
   ci->i_ceph_flags |= CEPH_I_FLUSH_SNAPS;

  list_del(&capsnap->ci_item);
  ceph_put_cap_snap(capsnap);
  return 1;
 }
 return 0;
}
