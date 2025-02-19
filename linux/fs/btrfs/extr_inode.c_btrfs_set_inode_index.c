
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_inode {scalar_t__ index_cnt; } ;


 int btrfs_inode_delayed_dir_index_count (struct btrfs_inode*) ;
 int btrfs_set_inode_index_count (struct btrfs_inode*) ;

int btrfs_set_inode_index(struct btrfs_inode *dir, u64 *index)
{
 int ret = 0;

 if (dir->index_cnt == (u64)-1) {
  ret = btrfs_inode_delayed_dir_index_count(dir);
  if (ret) {
   ret = btrfs_set_inode_index_count(dir);
   if (ret)
    return ret;
  }
 }

 *index = dir->index_cnt;
 dir->index_cnt++;

 return ret;
}
