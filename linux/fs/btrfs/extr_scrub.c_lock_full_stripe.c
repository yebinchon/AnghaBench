
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct full_stripe_lock {int mutex; } ;
struct btrfs_full_stripe_locks_tree {int lock; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int flags; struct btrfs_full_stripe_locks_tree full_stripe_locks_root; } ;


 int ASSERT (int ) ;
 int BTRFS_BLOCK_GROUP_RAID56_MASK ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct full_stripe_lock*) ;
 int PTR_ERR (struct full_stripe_lock*) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int get_full_stripe_logical (struct btrfs_block_group_cache*,int ) ;
 struct full_stripe_lock* insert_full_stripe_lock (struct btrfs_full_stripe_locks_tree*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lock_full_stripe(struct btrfs_fs_info *fs_info, u64 bytenr,
       bool *locked_ret)
{
 struct btrfs_block_group_cache *bg_cache;
 struct btrfs_full_stripe_locks_tree *locks_root;
 struct full_stripe_lock *existing;
 u64 fstripe_start;
 int ret = 0;

 *locked_ret = 0;
 bg_cache = btrfs_lookup_block_group(fs_info, bytenr);
 if (!bg_cache) {
  ASSERT(0);
  return -ENOENT;
 }


 if (!(bg_cache->flags & BTRFS_BLOCK_GROUP_RAID56_MASK))
  goto out;
 locks_root = &bg_cache->full_stripe_locks_root;

 fstripe_start = get_full_stripe_logical(bg_cache, bytenr);


 mutex_lock(&locks_root->lock);
 existing = insert_full_stripe_lock(locks_root, fstripe_start);
 mutex_unlock(&locks_root->lock);
 if (IS_ERR(existing)) {
  ret = PTR_ERR(existing);
  goto out;
 }
 mutex_lock(&existing->mutex);
 *locked_ret = 1;
out:
 btrfs_put_block_group(bg_cache);
 return ret;
}
