
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;


 int BTRFS_I (struct inode*) ;
 int btrfs_check_data_free_space (struct inode*,struct extent_changeset**,int ,int ) ;
 int btrfs_delalloc_reserve_metadata (int ,int ) ;
 int btrfs_free_reserved_data_space (struct inode*,struct extent_changeset*,int ,int ) ;

int btrfs_delalloc_reserve_space(struct inode *inode,
   struct extent_changeset **reserved, u64 start, u64 len)
{
 int ret;

 ret = btrfs_check_data_free_space(inode, reserved, start, len);
 if (ret < 0)
  return ret;
 ret = btrfs_delalloc_reserve_metadata(BTRFS_I(inode), len);
 if (ret < 0)
  btrfs_free_reserved_data_space(inode, *reserved, start, len);
 return ret;
}
