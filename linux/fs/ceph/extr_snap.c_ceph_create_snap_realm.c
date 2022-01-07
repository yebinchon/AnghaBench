
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_snap_realm {int ino; int inodes_with_caps_lock; int inodes_with_caps; int dirty_item; int empty_item; int child_item; int children; int nref; } ;
struct ceph_mds_client {int num_snap_realms; int snap_realms; } ;


 int ENOMEM ;
 struct ceph_snap_realm* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int __insert_snap_realm (int *,struct ceph_snap_realm*) ;
 int atomic_set (int *,int) ;
 int dout (char*,int ,struct ceph_snap_realm*) ;
 struct ceph_snap_realm* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ceph_snap_realm *ceph_create_snap_realm(
 struct ceph_mds_client *mdsc,
 u64 ino)
{
 struct ceph_snap_realm *realm;

 realm = kzalloc(sizeof(*realm), GFP_NOFS);
 if (!realm)
  return ERR_PTR(-ENOMEM);

 atomic_set(&realm->nref, 1);
 realm->ino = ino;
 INIT_LIST_HEAD(&realm->children);
 INIT_LIST_HEAD(&realm->child_item);
 INIT_LIST_HEAD(&realm->empty_item);
 INIT_LIST_HEAD(&realm->dirty_item);
 INIT_LIST_HEAD(&realm->inodes_with_caps);
 spin_lock_init(&realm->inodes_with_caps_lock);
 __insert_snap_realm(&mdsc->snap_realms, realm);
 mdsc->num_snap_realms++;

 dout("create_snap_realm %llx %p\n", realm->ino, realm);
 return realm;
}
