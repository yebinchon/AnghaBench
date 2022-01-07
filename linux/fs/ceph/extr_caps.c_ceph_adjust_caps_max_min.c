
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mount_options {int max_readdir; int caps_max; } ;
struct ceph_mds_client {int caps_min_count; int caps_use_max; int caps_list_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ceph_adjust_caps_max_min(struct ceph_mds_client *mdsc,
         struct ceph_mount_options *fsopt)
{
 spin_lock(&mdsc->caps_list_lock);
 mdsc->caps_min_count = fsopt->max_readdir;
 if (mdsc->caps_min_count < 1024)
  mdsc->caps_min_count = 1024;
 mdsc->caps_use_max = fsopt->caps_max;
 if (mdsc->caps_use_max > 0 &&
     mdsc->caps_use_max < mdsc->caps_min_count)
  mdsc->caps_use_max = mdsc->caps_min_count;
 spin_unlock(&mdsc->caps_list_lock);
}
