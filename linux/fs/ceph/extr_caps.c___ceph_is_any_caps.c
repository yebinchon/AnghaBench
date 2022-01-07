
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_caps; } ;


 int RB_EMPTY_ROOT (int *) ;

__attribute__((used)) static int __ceph_is_any_caps(struct ceph_inode_info *ci)
{
 return !RB_EMPTY_ROOT(&ci->i_caps);
}
