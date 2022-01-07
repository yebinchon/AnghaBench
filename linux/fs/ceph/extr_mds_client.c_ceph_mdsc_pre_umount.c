
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int stopping; } ;


 int ceph_cleanup_quotarealms_inodes (struct ceph_mds_client*) ;
 int ceph_flush_dirty_caps (struct ceph_mds_client*) ;
 int ceph_msgr_flush () ;
 int dout (char*) ;
 int lock_unlock_sessions (struct ceph_mds_client*) ;
 int wait_requests (struct ceph_mds_client*) ;

void ceph_mdsc_pre_umount(struct ceph_mds_client *mdsc)
{
 dout("pre_umount\n");
 mdsc->stopping = 1;

 lock_unlock_sessions(mdsc);
 ceph_flush_dirty_caps(mdsc);
 wait_requests(mdsc);





 ceph_msgr_flush();

 ceph_cleanup_quotarealms_inodes(mdsc);
}
