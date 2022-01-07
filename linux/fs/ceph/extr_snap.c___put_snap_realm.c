
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_snap_realm {int nref; int ino; } ;
struct ceph_mds_client {int dummy; } ;


 int __destroy_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dout (char*,int ,struct ceph_snap_realm*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void __put_snap_realm(struct ceph_mds_client *mdsc,
        struct ceph_snap_realm *realm)
{
 dout("__put_snap_realm %llx %p %d -> %d\n", realm->ino, realm,
      atomic_read(&realm->nref), atomic_read(&realm->nref)-1);
 if (atomic_dec_and_test(&realm->nref))
  __destroy_snap_realm(mdsc, realm);
}
