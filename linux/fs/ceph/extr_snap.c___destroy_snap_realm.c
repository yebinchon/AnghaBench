
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_realm {int cached_context; struct ceph_snap_realm* snaps; struct ceph_snap_realm* prior_parent_snaps; scalar_t__ parent; int child_item; int node; int ino; } ;
struct ceph_mds_client {int num_snap_realms; int snap_realms; } ;


 int __put_snap_realm (struct ceph_mds_client*,scalar_t__) ;
 int ceph_put_snap_context (int ) ;
 int dout (char*,struct ceph_snap_realm*,int ) ;
 int kfree (struct ceph_snap_realm*) ;
 int list_del_init (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void __destroy_snap_realm(struct ceph_mds_client *mdsc,
     struct ceph_snap_realm *realm)
{
 dout("__destroy_snap_realm %p %llx\n", realm, realm->ino);

 rb_erase(&realm->node, &mdsc->snap_realms);
 mdsc->num_snap_realms--;

 if (realm->parent) {
  list_del_init(&realm->child_item);
  __put_snap_realm(mdsc, realm->parent);
 }

 kfree(realm->prior_parent_snaps);
 kfree(realm->snaps);
 ceph_put_snap_context(realm->cached_context);
 kfree(realm);
}
