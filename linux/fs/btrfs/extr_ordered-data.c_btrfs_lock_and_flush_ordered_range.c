
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_state {int refs; } ;
struct extent_io_tree {int dummy; } ;
struct btrfs_ordered_extent {int dummy; } ;
struct btrfs_inode {int vfs_inode; } ;


 struct btrfs_ordered_extent* btrfs_lookup_ordered_range (struct btrfs_inode*,scalar_t__,scalar_t__) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_start_ordered_extent (int *,struct btrfs_ordered_extent*,int) ;
 int lock_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;
 int refcount_dec (int *) ;
 int unlock_extent_cached (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;

void btrfs_lock_and_flush_ordered_range(struct extent_io_tree *tree,
     struct btrfs_inode *inode, u64 start,
     u64 end,
     struct extent_state **cached_state)
{
 struct btrfs_ordered_extent *ordered;
 struct extent_state *cache = ((void*)0);
 struct extent_state **cachedp = &cache;

 if (cached_state)
  cachedp = cached_state;

 while (1) {
  lock_extent_bits(tree, start, end, cachedp);
  ordered = btrfs_lookup_ordered_range(inode, start,
           end - start + 1);
  if (!ordered) {





   if (!cached_state)
    refcount_dec(&cache->refs);
   break;
  }
  unlock_extent_cached(tree, start, end, cachedp);
  btrfs_start_ordered_extent(&inode->vfs_inode, ordered, 1);
  btrfs_put_ordered_extent(ordered);
 }
}
