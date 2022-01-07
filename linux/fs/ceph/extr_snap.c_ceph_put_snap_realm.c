
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_realm {int empty_item; int nref; int ino; } ;
struct ceph_mds_client {int snap_empty_lock; int snap_empty; int snap_rwsem; } ;


 int __destroy_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dout (char*,int ,struct ceph_snap_realm*,scalar_t__,scalar_t__) ;
 scalar_t__ down_write_trylock (int *) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;

void ceph_put_snap_realm(struct ceph_mds_client *mdsc,
    struct ceph_snap_realm *realm)
{
 dout("put_snap_realm %llx %p %d -> %d\n", realm->ino, realm,
      atomic_read(&realm->nref), atomic_read(&realm->nref)-1);
 if (!atomic_dec_and_test(&realm->nref))
  return;

 if (down_write_trylock(&mdsc->snap_rwsem)) {
  __destroy_snap_realm(mdsc, realm);
  up_write(&mdsc->snap_rwsem);
 } else {
  spin_lock(&mdsc->snap_empty_lock);
  list_add(&realm->empty_item, &mdsc->snap_empty);
  spin_unlock(&mdsc->snap_empty_lock);
 }
}
