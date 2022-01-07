
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ snap; scalar_t__ ino; } ;
struct ceph_inode_info {int i_ceph_lock; TYPE_1__ i_vino; TYPE_2__* i_snap_realm; scalar_t__ i_max_bytes; scalar_t__ i_max_files; } ;
struct TYPE_4__ {scalar_t__ ino; } ;


 scalar_t__ CEPH_NOSNAP ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool ceph_vxattrcb_quota_exists(struct ceph_inode_info *ci)
{
 bool ret = 0;
 spin_lock(&ci->i_ceph_lock);
 if ((ci->i_max_files || ci->i_max_bytes) &&
     ci->i_vino.snap == CEPH_NOSNAP &&
     ci->i_snap_realm &&
     ci->i_snap_realm->ino == ci->i_vino.ino)
  ret = 1;
 spin_unlock(&ci->i_ceph_lock);
 return ret;
}
