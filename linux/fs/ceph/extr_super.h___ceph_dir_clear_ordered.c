
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_ordered_count; } ;


 int atomic64_inc (int *) ;

__attribute__((used)) static inline void __ceph_dir_clear_ordered(struct ceph_inode_info *ci)
{
 atomic64_inc(&ci->i_ordered_count);
}
