
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int caps_total_count; int caps_avail_count; int caps_use_count; int caps_reserve_count; int caps_min_count; int caps_list_lock; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_reservation_status(struct ceph_fs_client *fsc,
        int *total, int *avail, int *used, int *reserved,
        int *min)
{
 struct ceph_mds_client *mdsc = fsc->mdsc;

 spin_lock(&mdsc->caps_list_lock);

 if (total)
  *total = mdsc->caps_total_count;
 if (avail)
  *avail = mdsc->caps_avail_count;
 if (used)
  *used = mdsc->caps_use_count;
 if (reserved)
  *reserved = mdsc->caps_reserve_count;
 if (min)
  *min = mdsc->caps_min_count;

 spin_unlock(&mdsc->caps_list_lock);
}
