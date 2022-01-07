
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_inode {scalar_t__ disk_i_size; } ;


 int btrfs_add_inode_defrag (int *,struct btrfs_inode*) ;

__attribute__((used)) static inline void inode_should_defrag(struct btrfs_inode *inode,
  u64 start, u64 end, u64 num_bytes, u64 small_write)
{

 if (num_bytes < small_write &&
     (start > 0 || end + 1 < inode->disk_i_size))
  btrfs_add_inode_defrag(((void*)0), inode);
}
