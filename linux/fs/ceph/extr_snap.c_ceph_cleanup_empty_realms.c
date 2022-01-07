
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int snap_rwsem; } ;


 int __cleanup_empty_realms (struct ceph_mds_client*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void ceph_cleanup_empty_realms(struct ceph_mds_client *mdsc)
{
 down_write(&mdsc->snap_rwsem);
 __cleanup_empty_realms(mdsc);
 up_write(&mdsc->snap_rwsem);
}
