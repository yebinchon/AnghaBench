
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_3__ {int lock; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ BTRFS_MAX_EXTENT_SIZE ;
 int EXTENT_DELALLOC ;
 int btrfs_mod_outstanding_extents (TYPE_1__*,int) ;
 scalar_t__ count_max_extents (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_split_delalloc_extent(struct inode *inode,
     struct extent_state *orig, u64 split)
{
 u64 size;


 if (!(orig->state & EXTENT_DELALLOC))
  return;

 size = orig->end - orig->start + 1;
 if (size > BTRFS_MAX_EXTENT_SIZE) {
  u32 num_extents;
  u64 new_size;





  new_size = orig->end - split + 1;
  num_extents = count_max_extents(new_size);
  new_size = split - orig->start;
  num_extents += count_max_extents(new_size);
  if (count_max_extents(size) >= num_extents)
   return;
 }

 spin_lock(&BTRFS_I(inode)->lock);
 btrfs_mod_outstanding_extents(BTRFS_I(inode), 1);
 spin_unlock(&BTRFS_I(inode)->lock);
}
