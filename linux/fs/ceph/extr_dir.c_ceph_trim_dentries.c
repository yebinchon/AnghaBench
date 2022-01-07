
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_mds_client {scalar_t__ caps_use_max; scalar_t__ caps_use_count; TYPE_2__* fsc; int caps_list_lock; } ;
struct ceph_lease_walk_control {int dir_lease; int nr_to_scan; int expire_dir_lease; int dir_lease_ttl; } ;
struct TYPE_4__ {TYPE_1__* mount_options; } ;
struct TYPE_3__ {int caps_wanted_delay_max; } ;


 int CEPH_CAPS_PER_RELEASE ;
 int EAGAIN ;
 int HZ ;
 int __dentry_lease_check ;
 unsigned long __dentry_leases_walk (struct ceph_mds_client*,struct ceph_lease_walk_control*,int ) ;
 int __dir_lease_check ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ceph_trim_dentries(struct ceph_mds_client *mdsc)
{
 struct ceph_lease_walk_control lwc;
 unsigned long count;
 unsigned long freed;

 spin_lock(&mdsc->caps_list_lock);
        if (mdsc->caps_use_max > 0 &&
            mdsc->caps_use_count > mdsc->caps_use_max)
  count = mdsc->caps_use_count - mdsc->caps_use_max;
 else
  count = 0;
        spin_unlock(&mdsc->caps_list_lock);

 lwc.dir_lease = 0;
 lwc.nr_to_scan = CEPH_CAPS_PER_RELEASE * 2;
 freed = __dentry_leases_walk(mdsc, &lwc, __dentry_lease_check);
 if (!lwc.nr_to_scan)
  return -EAGAIN;

 if (lwc.nr_to_scan < CEPH_CAPS_PER_RELEASE)
  lwc.nr_to_scan = CEPH_CAPS_PER_RELEASE;

 lwc.dir_lease = 1;
 lwc.expire_dir_lease = freed < count;
 lwc.dir_lease_ttl = mdsc->fsc->mount_options->caps_wanted_delay_max * HZ;
 freed +=__dentry_leases_walk(mdsc, &lwc, __dir_lease_check);
 if (!lwc.nr_to_scan)
  return -EAGAIN;

 return freed > 0 ? 1 : 0;
}
