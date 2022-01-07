
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_space_info {int lock; int bytes_reserved; } ;
struct btrfs_key {int offset; int objectid; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int lock; int reserved; struct btrfs_space_info* space_info; } ;


 int EINVAL ;
 int MIXED_GROUPS ;
 int __exclude_logged_extent (struct btrfs_fs_info*,int ,int ) ;
 int alloc_reserved_file_extent (struct btrfs_trans_handle*,int ,int ,int ,int ,int ,struct btrfs_key*,int) ;
 int btrfs_fs_incompat (struct btrfs_fs_info*,int ) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_alloc_logged_file_extent(struct btrfs_trans_handle *trans,
       u64 root_objectid, u64 owner, u64 offset,
       struct btrfs_key *ins)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 int ret;
 struct btrfs_block_group_cache *block_group;
 struct btrfs_space_info *space_info;





 if (!btrfs_fs_incompat(fs_info, MIXED_GROUPS)) {
  ret = __exclude_logged_extent(fs_info, ins->objectid,
           ins->offset);
  if (ret)
   return ret;
 }

 block_group = btrfs_lookup_block_group(fs_info, ins->objectid);
 if (!block_group)
  return -EINVAL;

 space_info = block_group->space_info;
 spin_lock(&space_info->lock);
 spin_lock(&block_group->lock);
 space_info->bytes_reserved += ins->offset;
 block_group->reserved += ins->offset;
 spin_unlock(&block_group->lock);
 spin_unlock(&space_info->lock);

 ret = alloc_reserved_file_extent(trans, 0, root_objectid, 0, owner,
      offset, ins, 1);
 btrfs_put_block_group(block_group);
 return ret;
}
