
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct full_stripe_lock {scalar_t__ refs; int mutex; int node; int logical; } ;
struct btrfs_full_stripe_locks_tree {int lock; int root; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int flags; struct btrfs_full_stripe_locks_tree full_stripe_locks_root; } ;


 int ASSERT (int ) ;
 int BTRFS_BLOCK_GROUP_RAID56_MASK ;
 int ENOENT ;
 int WARN_ON (int) ;
 struct btrfs_block_group_cache* btrfs_lookup_block_group (struct btrfs_fs_info*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_warn (struct btrfs_fs_info*,char*,int ) ;
 int get_full_stripe_logical (struct btrfs_block_group_cache*,int ) ;
 int kfree (struct full_stripe_lock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rb_erase (int *,int *) ;
 struct full_stripe_lock* search_full_stripe_lock (struct btrfs_full_stripe_locks_tree*,int ) ;

__attribute__((used)) static int unlock_full_stripe(struct btrfs_fs_info *fs_info, u64 bytenr,
         bool locked)
{
 struct btrfs_block_group_cache *bg_cache;
 struct btrfs_full_stripe_locks_tree *locks_root;
 struct full_stripe_lock *fstripe_lock;
 u64 fstripe_start;
 bool freeit = 0;
 int ret = 0;


 if (!locked)
  return 0;

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
 fstripe_lock = search_full_stripe_lock(locks_root, fstripe_start);

 if (!fstripe_lock) {
  WARN_ON(1);
  ret = -ENOENT;
  mutex_unlock(&locks_root->lock);
  goto out;
 }

 if (fstripe_lock->refs == 0) {
  WARN_ON(1);
  btrfs_warn(fs_info, "full stripe lock at %llu refcount underflow",
   fstripe_lock->logical);
 } else {
  fstripe_lock->refs--;
 }

 if (fstripe_lock->refs == 0) {
  rb_erase(&fstripe_lock->node, &locks_root->root);
  freeit = 1;
 }
 mutex_unlock(&locks_root->lock);

 mutex_unlock(&fstripe_lock->mutex);
 if (freeit)
  kfree(fstripe_lock);
out:
 btrfs_put_block_group(bg_cache);
 return ret;
}
