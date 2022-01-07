
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct ceph_inode_info {TYPE_1__ i_snap_btime; } ;



__attribute__((used)) static bool ceph_vxattrcb_snap_btime_exists(struct ceph_inode_info *ci)
{
 return (ci->i_snap_btime.tv_sec != 0 || ci->i_snap_btime.tv_nsec != 0);
}
