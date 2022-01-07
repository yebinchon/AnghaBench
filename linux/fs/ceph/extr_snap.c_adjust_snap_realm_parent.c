
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ceph_snap_realm {scalar_t__ parent_ino; int children; int child_item; struct ceph_snap_realm* parent; int ino; } ;
struct ceph_mds_client {int dummy; } ;


 scalar_t__ IS_ERR (struct ceph_snap_realm*) ;
 int PTR_ERR (struct ceph_snap_realm*) ;
 struct ceph_snap_realm* ceph_create_snap_realm (struct ceph_mds_client*,scalar_t__) ;
 struct ceph_snap_realm* ceph_lookup_snap_realm (struct ceph_mds_client*,scalar_t__) ;
 int ceph_put_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 int dout (char*,int ,struct ceph_snap_realm*,scalar_t__,struct ceph_snap_realm*,scalar_t__,struct ceph_snap_realm*) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;

__attribute__((used)) static int adjust_snap_realm_parent(struct ceph_mds_client *mdsc,
        struct ceph_snap_realm *realm,
        u64 parentino)
{
 struct ceph_snap_realm *parent;

 if (realm->parent_ino == parentino)
  return 0;

 parent = ceph_lookup_snap_realm(mdsc, parentino);
 if (!parent) {
  parent = ceph_create_snap_realm(mdsc, parentino);
  if (IS_ERR(parent))
   return PTR_ERR(parent);
 }
 dout("adjust_snap_realm_parent %llx %p: %llx %p -> %llx %p\n",
      realm->ino, realm, realm->parent_ino, realm->parent,
      parentino, parent);
 if (realm->parent) {
  list_del_init(&realm->child_item);
  ceph_put_snap_realm(mdsc, realm->parent);
 }
 realm->parent_ino = parentino;
 realm->parent = parent;
 list_add(&realm->child_item, &parent->children);
 return 1;
}
