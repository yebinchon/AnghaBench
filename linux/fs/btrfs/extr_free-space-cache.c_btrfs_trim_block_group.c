
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_block_group_cache {int lock; scalar_t__ removed; } ;


 int btrfs_get_block_group_trimming (struct btrfs_block_group_cache*) ;
 int btrfs_put_block_group_trimming (struct btrfs_block_group_cache*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trim_bitmaps (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;
 int trim_no_bitmap (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;

int btrfs_trim_block_group(struct btrfs_block_group_cache *block_group,
      u64 *trimmed, u64 start, u64 end, u64 minlen)
{
 int ret;

 *trimmed = 0;

 spin_lock(&block_group->lock);
 if (block_group->removed) {
  spin_unlock(&block_group->lock);
  return 0;
 }
 btrfs_get_block_group_trimming(block_group);
 spin_unlock(&block_group->lock);

 ret = trim_no_bitmap(block_group, trimmed, start, end, minlen);
 if (ret)
  goto out;

 ret = trim_bitmaps(block_group, trimmed, start, end, minlen);
out:
 btrfs_put_block_group_trimming(block_group);
 return ret;
}
