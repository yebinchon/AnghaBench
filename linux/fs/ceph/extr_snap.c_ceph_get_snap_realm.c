
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_realm {int empty_item; int nref; } ;
struct ceph_mds_client {int snap_empty_lock; } ;


 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dout (char*,struct ceph_snap_realm*,scalar_t__,scalar_t__) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_get_snap_realm(struct ceph_mds_client *mdsc,
    struct ceph_snap_realm *realm)
{
 dout("get_realm %p %d -> %d\n", realm,
      atomic_read(&realm->nref), atomic_read(&realm->nref)+1);






 if (atomic_inc_return(&realm->nref) == 1) {
  spin_lock(&mdsc->snap_empty_lock);
  list_del_init(&realm->empty_item);
  spin_unlock(&mdsc->snap_empty_lock);
 }
}
