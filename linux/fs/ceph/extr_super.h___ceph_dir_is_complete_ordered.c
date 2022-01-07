
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int i_ordered_count; int * i_complete_seq; int i_release_count; } ;


 scalar_t__ atomic64_read (int *) ;

__attribute__((used)) static inline bool __ceph_dir_is_complete_ordered(struct ceph_inode_info *ci)
{
 return atomic64_read(&ci->i_complete_seq[0]) ==
  atomic64_read(&ci->i_release_count) &&
  atomic64_read(&ci->i_complete_seq[1]) ==
  atomic64_read(&ci->i_ordered_count);
}
