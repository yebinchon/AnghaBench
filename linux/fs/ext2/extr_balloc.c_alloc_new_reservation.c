
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct rb_root {int dummy; } ;
struct ext2_reserve_window_node {unsigned long rsv_goal_size; int rsv_start; int rsv_end; int rsv_alloc_hit; int rsv_window; } ;
struct buffer_head {int dummy; } ;
typedef int spinlock_t ;
typedef scalar_t__ ext2_grpblk_t ;
typedef int ext2_fsblk_t ;
struct TYPE_2__ {int s_rsv_window_lock; struct rb_root s_rsv_window_root; } ;


 int EXT2_BLOCKS_PER_GROUP (struct super_block*) ;
 unsigned long EXT2_MAX_RESERVE_BLOCKS ;
 TYPE_1__* EXT2_SB (struct super_block*) ;
 scalar_t__ bitmap_search_next_usable_block (int,struct buffer_head*,int) ;
 int ext2_group_first_block_no (struct super_block*,unsigned int) ;
 int find_next_reservable_window (struct ext2_reserve_window_node*,struct ext2_reserve_window_node*,struct super_block*,int,int) ;
 int rsv_is_empty (int *) ;
 int rsv_window_remove (struct super_block*,struct ext2_reserve_window_node*) ;
 struct ext2_reserve_window_node* search_reserve_window (struct rb_root*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alloc_new_reservation(struct ext2_reserve_window_node *my_rsv,
  ext2_grpblk_t grp_goal, struct super_block *sb,
  unsigned int group, struct buffer_head *bitmap_bh)
{
 struct ext2_reserve_window_node *search_head;
 ext2_fsblk_t group_first_block, group_end_block, start_block;
 ext2_grpblk_t first_free_block;
 struct rb_root *fs_rsv_root = &EXT2_SB(sb)->s_rsv_window_root;
 unsigned long size;
 int ret;
 spinlock_t *rsv_lock = &EXT2_SB(sb)->s_rsv_window_lock;

 group_first_block = ext2_group_first_block_no(sb, group);
 group_end_block = group_first_block + (EXT2_BLOCKS_PER_GROUP(sb) - 1);

 if (grp_goal < 0)
  start_block = group_first_block;
 else
  start_block = grp_goal + group_first_block;

 size = my_rsv->rsv_goal_size;

 if (!rsv_is_empty(&my_rsv->rsv_window)) {
  if ((my_rsv->rsv_start <= group_end_block) &&
    (my_rsv->rsv_end > group_end_block) &&
    (start_block >= my_rsv->rsv_start))
   return -1;

  if ((my_rsv->rsv_alloc_hit >
       (my_rsv->rsv_end - my_rsv->rsv_start + 1) / 2)) {






   size = size * 2;
   if (size > EXT2_MAX_RESERVE_BLOCKS)
    size = EXT2_MAX_RESERVE_BLOCKS;
   my_rsv->rsv_goal_size= size;
  }
 }

 spin_lock(rsv_lock);



 search_head = search_reserve_window(fs_rsv_root, start_block);
retry:
 ret = find_next_reservable_window(search_head, my_rsv, sb,
      start_block, group_end_block);

 if (ret == -1) {
  if (!rsv_is_empty(&my_rsv->rsv_window))
   rsv_window_remove(sb, my_rsv);
  spin_unlock(rsv_lock);
  return -1;
 }
 spin_unlock(rsv_lock);
 first_free_block = bitmap_search_next_usable_block(
   my_rsv->rsv_start - group_first_block,
   bitmap_bh, group_end_block - group_first_block + 1);

 if (first_free_block < 0) {




  spin_lock(rsv_lock);
  if (!rsv_is_empty(&my_rsv->rsv_window))
   rsv_window_remove(sb, my_rsv);
  spin_unlock(rsv_lock);
  return -1;
 }

 start_block = first_free_block + group_first_block;




 if (start_block >= my_rsv->rsv_start && start_block <= my_rsv->rsv_end)
  return 0;






 search_head = my_rsv;
 spin_lock(rsv_lock);
 goto retry;
}
