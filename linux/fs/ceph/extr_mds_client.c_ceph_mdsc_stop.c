
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int sessions; scalar_t__ mdsmap; int delayed_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int ceph_caps_finalize (struct ceph_mds_client*) ;
 int ceph_mdsmap_destroy (scalar_t__) ;
 int ceph_pool_perm_destroy (struct ceph_mds_client*) ;
 int dout (char*) ;
 int kfree (int ) ;

__attribute__((used)) static void ceph_mdsc_stop(struct ceph_mds_client *mdsc)
{
 dout("stop\n");
 cancel_delayed_work_sync(&mdsc->delayed_work);
 if (mdsc->mdsmap)
  ceph_mdsmap_destroy(mdsc->mdsmap);
 kfree(mdsc->sessions);
 ceph_caps_finalize(mdsc);
 ceph_pool_perm_destroy(mdsc);
}
