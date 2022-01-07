
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mount_options {int caps_wanted_delay_min; int caps_wanted_delay_max; } ;
struct ceph_mds_client {TYPE_1__* fsc; } ;
struct ceph_inode_info {void* i_hold_caps_max; void* i_hold_caps_min; int vfs_inode; } ;
struct TYPE_2__ {struct ceph_mount_options* mount_options; } ;


 int HZ ;
 int dout (char*,int *,void*,void*) ;
 void* jiffies ;
 void* round_jiffies (void*) ;

__attribute__((used)) static void __cap_set_timeouts(struct ceph_mds_client *mdsc,
          struct ceph_inode_info *ci)
{
 struct ceph_mount_options *opt = mdsc->fsc->mount_options;

 ci->i_hold_caps_min = round_jiffies(jiffies +
         opt->caps_wanted_delay_min * HZ);
 ci->i_hold_caps_max = round_jiffies(jiffies +
         opt->caps_wanted_delay_max * HZ);
 dout("__cap_set_timeouts %p min %lu max %lu\n", &ci->vfs_inode,
      ci->i_hold_caps_min - jiffies, ci->i_hold_caps_max - jiffies);
}
