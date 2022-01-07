
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_mapping; } ;
struct extent_state {int dummy; } ;
struct btrfs_ordered_extent {scalar_t__ const file_offset; scalar_t__ const len; } ;
struct TYPE_2__ {int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 struct btrfs_ordered_extent* btrfs_lookup_first_ordered_extent (struct inode*,scalar_t__ const) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_wait_ordered_range (struct inode*,scalar_t__ const,scalar_t__ const) ;
 int filemap_range_has_page (int ,scalar_t__ const,scalar_t__ const) ;
 int lock_extent_bits (int *,scalar_t__ const,scalar_t__ const,struct extent_state**) ;
 int truncate_pagecache_range (struct inode*,scalar_t__ const,scalar_t__ const) ;
 int unlock_extent_cached (int *,scalar_t__ const,scalar_t__ const,struct extent_state**) ;

__attribute__((used)) static int btrfs_punch_hole_lock_range(struct inode *inode,
           const u64 lockstart,
           const u64 lockend,
           struct extent_state **cached_state)
{
 while (1) {
  struct btrfs_ordered_extent *ordered;
  int ret;

  truncate_pagecache_range(inode, lockstart, lockend);

  lock_extent_bits(&BTRFS_I(inode)->io_tree, lockstart, lockend,
     cached_state);
  ordered = btrfs_lookup_first_ordered_extent(inode, lockend);






  if ((!ordered ||
      (ordered->file_offset + ordered->len <= lockstart ||
       ordered->file_offset > lockend)) &&
       !filemap_range_has_page(inode->i_mapping,
          lockstart, lockend)) {
   if (ordered)
    btrfs_put_ordered_extent(ordered);
   break;
  }
  if (ordered)
   btrfs_put_ordered_extent(ordered);
  unlock_extent_cached(&BTRFS_I(inode)->io_tree, lockstart,
         lockend, cached_state);
  ret = btrfs_wait_ordered_range(inode, lockstart,
            lockend - lockstart + 1);
  if (ret)
   return ret;
 }
 return 0;
}
