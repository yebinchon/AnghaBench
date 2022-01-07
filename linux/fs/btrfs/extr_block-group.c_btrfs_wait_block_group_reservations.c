
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_space_info {int groups_sem; } ;
struct btrfs_block_group_cache {int flags; int reservations; int ro; struct btrfs_space_info* space_info; } ;


 int ASSERT (int ) ;
 int BTRFS_BLOCK_GROUP_DATA ;
 int atomic_read (int *) ;
 int down_write (int *) ;
 int up_write (int *) ;
 int wait_var_event (int *,int) ;

void btrfs_wait_block_group_reservations(struct btrfs_block_group_cache *bg)
{
 struct btrfs_space_info *space_info = bg->space_info;

 ASSERT(bg->ro);

 if (!(bg->flags & BTRFS_BLOCK_GROUP_DATA))
  return;
 down_write(&space_info->groups_sem);
 up_write(&space_info->groups_sem);

 wait_var_event(&bg->reservations, !atomic_read(&bg->reservations));
}
