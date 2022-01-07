
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stripe_count; } ;
struct ceph_inode_info {TYPE_1__ i_layout; } ;
typedef int ssize_t ;


 int ceph_fmt_xattr (char*,size_t,char*,int ) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_layout_stripe_count(struct ceph_inode_info *ci,
       char *val, size_t size)
{
 return ceph_fmt_xattr(val, size, "%u", ci->i_layout.stripe_count);
}
