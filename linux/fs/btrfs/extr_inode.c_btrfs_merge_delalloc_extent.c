
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_3__ {int lock; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ BTRFS_MAX_EXTENT_SIZE ;
 int EXTENT_DELALLOC ;
 int btrfs_mod_outstanding_extents (TYPE_1__*,int) ;
 scalar_t__ count_max_extents (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_merge_delalloc_extent(struct inode *inode, struct extent_state *new,
     struct extent_state *other)
{
 u64 new_size, old_size;
 u32 num_extents;


 if (!(other->state & EXTENT_DELALLOC))
  return;

 if (new->start > other->start)
  new_size = new->end - other->start + 1;
 else
  new_size = other->end - new->start + 1;


 if (new_size <= BTRFS_MAX_EXTENT_SIZE) {
  spin_lock(&BTRFS_I(inode)->lock);
  btrfs_mod_outstanding_extents(BTRFS_I(inode), -1);
  spin_unlock(&BTRFS_I(inode)->lock);
  return;
 }
 old_size = other->end - other->start + 1;
 num_extents = count_max_extents(old_size);
 old_size = new->end - new->start + 1;
 num_extents += count_max_extents(old_size);
 if (count_max_extents(new_size) >= num_extents)
  return;

 spin_lock(&BTRFS_I(inode)->lock);
 btrfs_mod_outstanding_extents(BTRFS_I(inode), -1);
 spin_unlock(&BTRFS_I(inode)->lock);
}
