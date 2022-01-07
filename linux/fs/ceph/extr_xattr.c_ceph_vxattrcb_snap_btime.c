
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_nsec; int tv_sec; } ;
struct ceph_inode_info {TYPE_1__ i_snap_btime; } ;
typedef int ssize_t ;


 int ceph_fmt_xattr (char*,size_t,char*,int ,int ) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_snap_btime(struct ceph_inode_info *ci, char *val,
     size_t size)
{
 return ceph_fmt_xattr(val, size, "%lld.%09ld", ci->i_snap_btime.tv_sec,
    ci->i_snap_btime.tv_nsec);
}
