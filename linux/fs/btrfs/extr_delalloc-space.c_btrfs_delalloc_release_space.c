
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;


 int BTRFS_I (struct inode*) ;
 int btrfs_delalloc_release_metadata (int ,int ,int) ;
 int btrfs_free_reserved_data_space (struct inode*,struct extent_changeset*,int ,int ) ;

void btrfs_delalloc_release_space(struct inode *inode,
      struct extent_changeset *reserved,
      u64 start, u64 len, bool qgroup_free)
{
 btrfs_delalloc_release_metadata(BTRFS_I(inode), len, qgroup_free);
 btrfs_free_reserved_data_space(inode, reserved, start, len);
}
