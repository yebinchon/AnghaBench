
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;


 int ceph_mdsc_stop (struct ceph_mds_client*) ;
 int ceph_msgr_flush () ;
 int dout (char*,struct ceph_mds_client*) ;
 int kfree (struct ceph_mds_client*) ;

void ceph_mdsc_destroy(struct ceph_fs_client *fsc)
{
 struct ceph_mds_client *mdsc = fsc->mdsc;
 dout("mdsc_destroy %p\n", mdsc);

 if (!mdsc)
  return;


 ceph_msgr_flush();

 ceph_mdsc_stop(mdsc);

 fsc->mdsc = ((void*)0);
 kfree(mdsc);
 dout("mdsc_destroy %p done\n", mdsc);
}
