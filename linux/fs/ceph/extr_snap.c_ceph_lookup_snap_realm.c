
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_snap_realm {int dummy; } ;
struct ceph_mds_client {int dummy; } ;


 struct ceph_snap_realm* __lookup_snap_realm (struct ceph_mds_client*,int ) ;
 int ceph_get_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;

struct ceph_snap_realm *ceph_lookup_snap_realm(struct ceph_mds_client *mdsc,
            u64 ino)
{
 struct ceph_snap_realm *r;
 r = __lookup_snap_realm(mdsc, ino);
 if (r)
  ceph_get_snap_realm(mdsc, r);
 return r;
}
