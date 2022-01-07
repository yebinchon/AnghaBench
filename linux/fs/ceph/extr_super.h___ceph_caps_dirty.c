
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_dirty_caps; int i_flushing_caps; } ;



__attribute__((used)) static inline int __ceph_caps_dirty(struct ceph_inode_info *ci)
{
 return ci->i_dirty_caps | ci->i_flushing_caps;
}
