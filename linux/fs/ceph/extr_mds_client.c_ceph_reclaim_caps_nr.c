
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int cap_reclaim_pending; } ;


 int CEPH_CAPS_PER_RELEASE ;
 int atomic_add_return (int,int *) ;
 int atomic_set (int *,int ) ;
 int ceph_queue_cap_reclaim_work (struct ceph_mds_client*) ;

void ceph_reclaim_caps_nr(struct ceph_mds_client *mdsc, int nr)
{
 int val;
 if (!nr)
  return;
 val = atomic_add_return(nr, &mdsc->cap_reclaim_pending);
 if (!(val % CEPH_CAPS_PER_RELEASE)) {
  atomic_set(&mdsc->cap_reclaim_pending, 0);
  ceph_queue_cap_reclaim_work(mdsc);
 }
}
