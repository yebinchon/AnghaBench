
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_caps; } ;


 scalar_t__ rb_first (int *) ;
 scalar_t__ rb_last (int *) ;

__attribute__((used)) static int __ceph_is_single_caps(struct ceph_inode_info *ci)
{
 return rb_first(&ci->i_caps) == rb_last(&ci->i_caps);
}
