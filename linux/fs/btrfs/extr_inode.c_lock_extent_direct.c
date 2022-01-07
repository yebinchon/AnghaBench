
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int i_mapping; } ;
struct extent_state {int dummy; } ;
struct btrfs_ordered_extent {int flags; } ;
struct TYPE_3__ {int io_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_ORDERED_DIRECT ;
 int ENOTBLK ;
 struct btrfs_ordered_extent* btrfs_lookup_ordered_range (TYPE_1__*,scalar_t__,scalar_t__) ;
 int btrfs_put_ordered_extent (struct btrfs_ordered_extent*) ;
 int btrfs_start_ordered_extent (struct inode*,struct btrfs_ordered_extent*,int) ;
 int cond_resched () ;
 int filemap_range_has_page (int ,scalar_t__,scalar_t__) ;
 int lock_extent_bits (int *,scalar_t__,scalar_t__,struct extent_state**) ;
 scalar_t__ test_bit (int ,int *) ;
 int unlock_extent_cached (int *,scalar_t__,scalar_t__,struct extent_state**) ;

__attribute__((used)) static int lock_extent_direct(struct inode *inode, u64 lockstart, u64 lockend,
         struct extent_state **cached_state, int writing)
{
 struct btrfs_ordered_extent *ordered;
 int ret = 0;

 while (1) {
  lock_extent_bits(&BTRFS_I(inode)->io_tree, lockstart, lockend,
     cached_state);





  ordered = btrfs_lookup_ordered_range(BTRFS_I(inode), lockstart,
           lockend - lockstart + 1);
  if (!ordered &&
      (!writing || !filemap_range_has_page(inode->i_mapping,
        lockstart, lockend)))
   break;

  unlock_extent_cached(&BTRFS_I(inode)->io_tree, lockstart, lockend,
         cached_state);

  if (ordered) {
   if (writing ||
       test_bit(BTRFS_ORDERED_DIRECT, &ordered->flags))
    btrfs_start_ordered_extent(inode, ordered, 1);
   else
    ret = -ENOTBLK;
   btrfs_put_ordered_extent(ordered);
  } else {
   ret = -ENOTBLK;
  }

  if (ret)
   break;

  cond_resched();
 }

 return ret;
}
